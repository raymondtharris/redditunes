TYPE=VIEW
query=select `AR`.`Name` AS `Artist`,`AL`.`Name` AS `Album`,`S`.`Name` AS `Song`,`S`.`Length` AS `Length`,`G`.`Name` AS `Genre`,`AL`.`Cover_Art` AS `Art`,`F`.`File_Loc` AS `Location`,`mediaTest`.`Rating`.`Value` AS `Rating` from `mediaTest`.`Artist` `AR` join `mediaTest`.`Album` `AL` join `mediaTest`.`Song` `S` join `mediaTest`.`Genre` `G` join `mediaTest`.`File` `F` join `mediaTest`.`Rating` where ((`S`.`Album_ID` = `AL`.`Album_ID`) and (`AL`.`Artist_ID` = `AR`.`Artist_ID`) and (`AL`.`Genre_ID` = `G`.`Genre_ID`) and (`F`.`File_ID` = `S`.`Song_ID`) and (`S`.`Song_ID` = `mediaTest`.`Rating`.`Rating_ID`)) order by `AR`.`Name`
md5=cdd4cdcaa6221ab93e9403fddaed1ac4
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2011-05-03 00:22:28
create-version=1
source=SELECT AR.Name AS Artist, AL.Name AS Album, S.Name AS Song, S.Length AS Length, G.Name As Genre, AL.Cover_Art AS Art, F.File_loc AS Location, Rating.Value AS Rating\nFROM Artist AR, Album AL, Song S, Genre G, File F, Rating\nWHERE S.Album_ID = AL.Album_ID\nAND AL.Artist_ID = AR.Artist_ID\nAND AL.Genre_ID = G.Genre_ID\nAND F.File_ID = S.Song_ID\nAND S.Song_ID = Rating.Rating_ID\nORDER BY AR.Name
client_cs_name=latin1
connection_cl_name=latin1_swedish_ci
view_body_utf8=select `AR`.`Name` AS `Artist`,`AL`.`Name` AS `Album`,`S`.`Name` AS `Song`,`S`.`Length` AS `Length`,`G`.`Name` AS `Genre`,`AL`.`Cover_Art` AS `Art`,`F`.`File_Loc` AS `Location`,`mediaTest`.`Rating`.`Value` AS `Rating` from `mediaTest`.`Artist` `AR` join `mediaTest`.`Album` `AL` join `mediaTest`.`Song` `S` join `mediaTest`.`Genre` `G` join `mediaTest`.`File` `F` join `mediaTest`.`Rating` where ((`S`.`Album_ID` = `AL`.`Album_ID`) and (`AL`.`Artist_ID` = `AR`.`Artist_ID`) and (`AL`.`Genre_ID` = `G`.`Genre_ID`) and (`F`.`File_ID` = `S`.`Song_ID`) and (`S`.`Song_ID` = `mediaTest`.`Rating`.`Rating_ID`)) order by `AR`.`Name`
