<?php
session_start();
ob_start();

$id_usuario = $_SESSION['id'];

include "DB/conexaogeral.php";
?>
<!doctype html>
<html>

<head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>BookWise</title>
    <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css' rel='stylesheet'>
    <link href='https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <link
        href="https://fonts.googleapis.com/css2?family=Lato:wght@700&family=Nunito:wght@700&family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="./css/home.css">

    <script type="text/javascript">
    function newPopup(){
        varWindow = window.open ('adicionarlivro.php', 'popup', "scrollbars=yes, resizable=yes, top=220, left=350, width=800, height=400")
    }
    </script>
</head>

<body className='snippet-body'>

    <body id="body-pd">
        <header class="header" id="header">
            <div class="header_toggle"> <i class='bx bx-menu' id="header-toggle"></i> </div>
            <div class="header_img"> <img src="./img/logo_pessoa.jpg" alt=""> </div>
        </header>

        <div class="l-navbar" id="nav-bar">
            <nav class="nav">
            <div> <a href="#" class="nav_logo"> <i class='bx bx-layer nav_logo-icon'></i> <span
                            class="nav_logo-name">BookWise</span> </a>
                    <div class="nav_list"> 
                        <a href="home.php" class="nav_link active"> <i class='bx bx-grid-alt nav_icon'></i>
                            <span class="nav_name">Dashboard</span> </a> 
                        
                        <a href="biblioteca.php" class="nav_link"> <i class='bx bx-book'></i> 
                            <span class="nav_name">Library</span> </a> 
                        
                        <a href="mybooks.php" class="nav_link"> <i class='bx bx-bookmark nav_icon'></i> 
                            <span class="nav_name">My Books</span> </a> 
                        
                        <a href="#" class="nav_link"> <i class='bx bx-folder nav_icon'></i> 
                            <span class="nav_name">Files</span> </a> 
                        
                        <a href="#" class="nav_link"> <i class='bx bx-bar-chart-alt-2 nav_icon'></i> 
                            <span class="nav_name">Stats</span> </a>
                    </div>
                </div> <a href="sair.php" class="nav_link"> <i class='bx bx-log-out nav_icon'></i> <span
                        class="nav_name">SignOut</span> </a>
            </nav>
        </div>
        <!--Container Main start-->
        <div class="height-100 bg-light">
            <h4>Books Romance - Frist Decision</h4>
            <section class="top">
                <nav>
                    <ul>
                        <li>
                        <a href="biblioteca.php" class="btn btn-success">Todos</a>
                        <a href="ficcao.php?classificacao=Ficção" class="btn btn-primary">Ficção</a>
                        <a href="nao_ficcao.php?classificacao=Não-Ficção" class="btn btn-primary">Não Ficção</a>
                        <a href="misterio.php?classificacao=Misterio" class="btn btn-primary">Mistério</a>
                        <a href="romance.php?classificacao=Romance" class="btn btn-primary">Romance</a>
                        </li>
                    </ul>
                </nav>
            </section>

        <?php
        $classificacao = $_GET['classificacao'];
        $query = "SELECT * FROM livros WHERE Classificacao = '$classificacao'";
        $result = mysqli_query($link, $query);
        while ($array = mysqli_fetch_assoc($result)) {
        ?>

        <div class="galeria">
            <div class="infor">
                <img class="img-thumbnail" src="<?=$array['imagem']?>" alt="Foto Álbum"> <br>
                <span><b>Titulo:</b> <?=$array['Titulo']?></span><br>
                <span><b>Ano:</b> <?=$array['Ano']?></span><br>
                <span><b>Autor:</b> <?=$array['Autor']?></span><br>
                <a  type="button" data-target="#myModal" data-toggle="modal" href="adicionarlivro.php?id=<?=$array['id']?>" target="_blank" class="btn btn-primary btn-nav active">
                ABRIR MODAL
                </a>
            </div>
        </div>

        <?php } ?>

        <style type="text/css">
            .galeria{
                float: left;
                margin: 25px;
            }
            .galeria img{
                width: 150px;
                height: 180px;
            }
            .infor{
                box-shadow: 0px 10px 15px -3px rgba(0,0,0,0.2);
                width: 300px;
                height: 400px;
                text-align: justify;
                display: flex;
                flex-direction: column;
                align-items: center;
            }
            .infor:hover{
                transition: 0.10s;
                box-shadow: 0px 10px 15px -3px rgba(0,0,0,0.1);
            }
        </style>

        </div>
        <!--Container Main end-->

        <script type='text/javascript'
            src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js'></script>
        <script type='text/javascript' src='#'></script>
        <script type='text/javascript' src='#'></script>
        <script type='text/javascript' src='#'></script>
        <script type='text/javascript'>document.addEventListener("DOMContentLoaded", function (event) {
                const showNavbar = (toggleId, navId, bodyId, headerId) => {
                    const toggle = document.getElementById(toggleId),
                        nav = document.getElementById(navId),
                        bodypd = document.getElementById(bodyId),
                        headerpd = document.getElementById(headerId)

                    // Validate that all variables exist
                    if (toggle && nav && bodypd && headerpd) {
                        toggle.addEventListener('click', () => {
                            // show navbar
                            nav.classList.toggle('show')
                            // change icon
                            toggle.classList.toggle('bx-x')
                            // add padding to body
                            bodypd.classList.toggle('body-pd')
                            // add padding to header
                            headerpd.classList.toggle('body-pd')
                        })
                    }
                }

                showNavbar('header-toggle', 'nav-bar', 'body-pd', 'header')

                /*===== LINK ACTIVE =====*/
                const linkColor = document.querySelectorAll('.nav_link')

                function colorLink() {
                    if (linkColor) {
                        linkColor.forEach(l => l.classList.remove('active'))
                        this.classList.add('active')
                    }
                }
                linkColor.forEach(l => l.addEventListener('click', colorLink))

                // Your code to run since DOM is loaded and ready
            });
        </script>
        <script type='text/javascript'>var myLink = document.querySelector('a[href="#"]');
            myLink.addEventListener('click', function (e) {
                e.preventDefault();
            });
        </script>


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