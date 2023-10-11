<?php

        $host = "localhost";
        $user = "root";
        $pass = "Pas@2023";
        $dbname = "bookwise";
        $port = 3306;

        $link = mysqli_connect("localhost", "root", "Pas@2023", "bookwise")
        or die(mysqli_error());

        mysqli_select_db($link, "bookwise") or die(mysqli_error($link));
        ?>
