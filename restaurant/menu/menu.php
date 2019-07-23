<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Menu_restaurant</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/css.css" type="text/css" />
    <link href="../css/fonts.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="../css/bootstrap-select.css" type="text/css" />
	<link rel="stylesheet" href="../css/bootstrap-select.min.css" type="text/css" />
	<link rel="stylesheet" href="../css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css"/>
	<link rel="stylesheet" href="../style.css" type="text/css" />
	<link rel="stylesheet" href="../css/dark.css" type="text/css" />
	<link rel="stylesheet" href="../css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="../css/animate.css" type="text/css" />
	<link rel="stylesheet" href="../css/magnific-popup.css" type="text/css" />
	<link rel="stylesheet" href="../css/fontawesome.min.css" type="text/css" />
	<link rel="stylesheet" href="../css/all.min.css" type="text/css" />

	<!-- Bootstrap Editable Plugin -->
	<link rel="stylesheet" href="css/components/bs-select.css" type="text/css" />
	<link rel="stylesheet" href="css/components/radio-checkbox.css" type="text/css" />
	<link rel="stylesheet" href="css/components/datepicker.css" type="text/css" />
	<link rel="stylesheet" href="css/components/bs-filestyle.css" type="text/css" />
    <link rel="stylesheet" href="css/components/bs-datatable.css" type="text/css" />
        <script>
        $('li a').click(function(){
            $('li a').removeClass("active");
            $(this).addClass("active");
            });
        </script>
</head>
<body>
<div class="container">
            <nav> 
                <ul class="nav nav-pills">
                <li><a href="#Traditionnelle" data-toggle="tab">Plats Traditionneles</a></li>
                <li><a href="#Base" data-toggle="tab">Plats de Bases</a></li>
                <li><a href="#Dissert" data-toggle="tab">Nos Disserts</a></li>
                <li><a href="#Boisson" data-toggle="tab">Nos Boissons</a></li>
                </ul>
                <form class="form-inline my-2 my-lg-0 nav" style="float:right">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                        </form> 
        </nav>
            <!--le contenue de chaques categories des plats -->
                
            <div id="myTabContent" class="tab-content col-md-12">
                        <!--les plats traditionnelle-->
                        <div class="tab-pane" id="Traditionnelle">
                                <h2>Card Image</h2>
                                <p>Image at the top (card-img-top):</p>
                                <div class="card" style="width:400px">
                                    <img class="card-img-top" src="img_avatar1.png" alt="Card image" style="width:100%">
                                    <div class="card-body">
                                    <h4 class="card-title">John Doe</h4>
                                    <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
                                    <a href="#" class="btn btn-primary">See Profile</a>
                                    </div>
                                </div>
                                <br>
                                
                                <p>Image at the bottom (card-img-bottom):</p>
                                <div class="card" style="width:400px">
                                    <div class="card-body">
                                    <h4 class="card-title">Jane Doe</h4>
                                    <p class="card-text">Some example text some example text. Jane Doe is an architect and engineer</p>
                                    <a href="#" class="btn btn-primary">See Profile</a>
                                    </div>
                                    <img class="card-img-bottom" src="img_avatar6.png" alt="Card image" style="width:100%">
                                </div>              
                                <?php 
                                echo 'raouf';
                                ?>
                        </div>

                        <!--les plats traditionnelle-->
                        <div class="tab-pane" id="Base">
                            
                        </div>

                        <!--les plats traditionnelle-->
                        <div class="tab-pane" id="Dissert">
                            
                        </div>

                        <!--les plats traditionnelle-->
                        <div class="tab-pane" id="Boisson">
                            
                        </div>
                </div>
</div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>