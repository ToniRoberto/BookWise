<?php
$id_login = '1';
?>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Dados</title>
        <meta http-equiv="refresh" content="5" >
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-grid.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-utilities.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-reboot.css" rel="stylesheet" type="text/css"/>

           </script>
    <script type="text/javascript">
  function newPopup(){
        varWindow = window.open ('adicionarlivro.php', 'popup', "scrollbars=yes, resizable=yes, top=220, left=350, width=800, height=400")
}
</script>
    </head>
    <body>
        <h3>Listar dados livros</h3>
    
        <?php

        $cx = mysqli_connect("localhost", "root", "Pas@2023");
 
        //selecionando o banco de dados 
        $db = mysqli_select_db($cx, "bookwise");
         
        //criando a query de consulta à tabela criada 
        $sql = mysqli_query($cx, "SELECT * FROM usuarios") or die( 
          mysqli_error($cx) //caso haja um erro na consulta 
        );
        
        while($aux = mysqli_fetch_assoc($sql)) {  
        ?>

        <?php
        $Livro = $aux["id_livro"];
        

        $query = "SELECT * FROM livros WHERE id = '$Livro'";
        $result = mysqli_query($cx, $query);
        while ($array = mysqli_fetch_assoc($result)) {
        ?>

        <div style="float: left; margin: 25px; display: flex; flex-direction: column; align-items: center; justify-content: center;">
            <img class="img-thumbnail" src="<?=$array['imagem']?>" alt="Foto Álbum"> <br>
            <span><b>Titulo:</b> <?=$array['Titulo']?></span>
            <span><b>Ano:</b> <?=$array['Ano']?></span>
            <span><b>Autor:</b> <?=$array['Autor']?></span>
        </div>
    <?php } ?>
        <?php } ?>

        <style type="text/css">
      
            .img-thumbnail{
                width: 110px;
                height: 120px;
            }
        </style>

            
            

  <div class="container">


  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
            
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>

    </body>
</html>
