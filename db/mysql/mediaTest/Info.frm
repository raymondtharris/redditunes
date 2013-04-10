TYPE=VIEW
query=select `AR`.`Name` AS `Artist`,`AL`.`Name` AS `Album`,`S`.`Name` AS `Song`,`S`.`Length` AS `Length`,`G`.`Name` AS `Genre` from (((`mediaTest`.`Artist` `AR` join `mediaTest`.`Album` `AL`) join `mediaTest`.`Song` `S`) join `mediaTest`.`Genre` `G`) where ((`S`.`Album_ID` = `AL`.`Album_ID`) and (`AL`.`Artist_ID` = `AR`.`Artist_ID`) and (`AL`.`Genre_ID` = `G`.`Genre_ID`)) order by `AR`.`Name`
md5=cda140023330060715f0db9f1eeb5ec4
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2011-05-02 01:57:31
create-version=1
source=select\n   `AR`.`Name` AS `Artist`,\n   `AL`.`Name` AS `Album`,\n   `S`.`Name` AS `Song`,\n   `S`.`Length` AS `Length`,\n   `G`.`Name` AS `Genre`\nfrom (((`Artist` `AR` join `Album` `AL`) join `Song` `S`) join `Genre` `G`)\nwhere ((`S`.`Album_ID` = `AL`.`Album_ID`) and (`AL`.`Artist_ID` = `AR`.`Artist_ID`) and (`AL`.`Genre_ID` = `G`.`Genre_ID`)) order by `AR`.`Name`
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `AR`.`Name` AS `Artist`,`AL`.`Name` AS `Album`,`S`.`Name` AS `Song`,`S`.`Length` AS `Length`,`G`.`Name` AS `Genre` from (((`mediaTest`.`Artist` `AR` join `mediaTest`.`Album` `AL`) join `mediaTest`.`Song` `S`) join `mediaTest`.`Genre` `G`) where ((`S`.`Album_ID` = `AL`.`Album_ID`) and (`AL`.`Artist_ID` = `AR`.`Artist_ID`) and (`AL`.`Genre_ID` = `G`.`Genre_ID`)) order by `AR`.`Name`
