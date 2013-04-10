<?php
if($_POST) {

    /*** mysql hostname ***/
    $hostname = 'localhost';

    /*** mysql username ***/
    $username = 'root';

    /*** mysql password ***/
    $password = 'root';

    $dbname = 'mediaTest';

    try {
        $dbh = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);
        // getting and escaping POST variables
        $user = addslashes(strip_tags($_POST['Username']));
        $pass = addslashes(strip_tags($_POST['UserPassword']));

        /*** set all errors to execptions ***/
        $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

       /*** checking username and password ***/
        $sql = "SELECT count(*) AS total FROM User
                WHERE Username = :user AND
                UserPassword = :pass";
        $stmt = $dbh->prepare($sql);
        /*** bind the paramaters ***/
        $stmt->bindParam(':user', $user, PDO::PARAM_STR);
        $stmt->bindParam(':pass', $pass, PDO::PARAM_STR);
        $stmt->execute();
        if ($stmt->fetch(PDO::FETCH_COLUMN) > 0) {
            $sql = "SELECT * FROM User
                    WHERE Username = :user AND
                    UserPassword = :pass";
            $stmt = $dbh->prepare($sql);
            /*** bind the paramaters ***/
            $stmt->bindParam(':user', $user, PDO::PARAM_STR);
            $stmt->bindParam(':pass', $pass, PDO::PARAM_STR);
            $stmt->execute();
            $row = $stmt->fetch(PDO::FETCH_ASSOC);
            // here we write $row to $_SESSION
            $_SESSION['User'] = $row;
            // sending user's name back as result
            echo '<p>Congratulations, <em>' . $row['username'] . '</em>, you have successfuly logged in!</p>';
        }
    }
    catch(PDOException $e) {
        echo $e->getMessage();
    }

}

?>