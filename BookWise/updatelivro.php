<?php

        $host = "localhost";
        $user = "root";
        $pass = "Pas@2023";
        $dbname = "bookwise";
        $port = 3306;

        $link = mysqli_connect("localhost", "root", "Pas@2023", "bookwise") or die(mysqli_error());

        mysqli_select_db($link, "bookwise") or die(mysqli_error($link));

        $id_login = $_GET['id_login'];
        $id_livro = $_GET['id_livro'];

	$abriremp = $link->query("INSERT INTO usuarios(id_login, id_livro) VALUES('$id_login','$id_livro')");
	if ( $abriremp ) { 
                header("location: biblioteca.php"); exit; 
        }

?>