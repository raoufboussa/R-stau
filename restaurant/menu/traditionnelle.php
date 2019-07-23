<?php 
session_start();
include 'connexion.php';

    ////////////////////////////////////////////////
      /// RECUPERATION DE LA LISTE DES PLATS /////
	////////////////////////////////////////////////
    
$req = $cnx->prepare('select * from plat where TYPES_PLAT =='.'traditionnel'.'');
$req-> execute();
$cpt =0;
while ($resultat = $req->fetch())
{
    //chaques tableau conteint une colonne de la table 'plat'//

    $tab_images[$cpt] = $resultat['IMAGE_PLAT'];
    $tab_id_offre[$cpt] = $resultat['ID_OFFRE'];
    $tab_nom_plat[$cpt] = $resultat['NOM_PLAT'];
    $tab_prix_plat[$cpt] = $resultat['PRIX_PLAT'];
    $tab_point_plat[$cpt] = $resultat['POINT_PLAT'];
    $cpt++;
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
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
</head>
<body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>