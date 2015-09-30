<?php  
    session_start();

    $_SESSION['activite'] = $_POST['activite'];

    include('../model/bdd_connect.php');

    $bdd->query("SET NAMES 'UTF8'");

     $query_parameters = [];
     $entreprises = [];
     // if($_POST['filtre'] != ""){
     //     $where = "Activite = ?";
     //     array_push($query_parameters, $_POST['filtre']);
     // }
     $_POST['activite'] = str_replace("'", "''", $_POST['activite']);
     $_POST['activite'] == "" ? $parameter = "" : $parameter = ' AND Activite = \'' . $_POST['activite'] .'\'';
    

     $where = 'WHERE id > 0' . $parameter;

     $reponse_filtre = $bdd->prepare('SELECT * FROM `geo-agro` ' .  $where);
     $reponse_filtre->execute($query_parameters);
     while($ligne_entreprise = $reponse_filtre->fetch()) 
         { 
             array_push($entreprises, $ligne_entreprise);
         }
     $reponse_filtre->closeCursor();
     
     $_SESSION['entreprise'] = "";
     foreach($entreprises AS $entreprise){
             $entreprise['Activite'] = $entreprise['Activite'];
             $_SESSION['entreprise'] = "{$_SESSION['entreprise']} [\"{$entreprise['Nom']}\", \"{$entreprise['Activite']}\", \"{$entreprise['Contact']}\", \"{$entreprise['Telephone']}\", \"{$entreprise['Employes']}\", {$entreprise['Lng']}, {$entreprise['Lat']} ],";
         };
     $_SESSION['entreprise'] = substr($_SESSION['entreprise'],0,-2) . "]";

    header('Location: ../index.php');      
?>
