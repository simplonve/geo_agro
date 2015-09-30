<?php  
    session_start();
     echo $_POST['activite']; 

     try
     {
         $bdd = new PDO('mysql:host=localhost;dbname=agro', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
     }
     catch (Exception $e)
     {
         die('Erreur : ' . $e->getMessage());
     };

     $query_parameters = [];
     $entreprises = [];
     // if($_POST['filtre'] != ""){
     //     $where = "Activite = ?";
     //     array_push($query_parameters, $_POST['filtre']);
     // }
     $_POST['activite'] == "" ? $parameter = "" : $parameter = ' AND Activite = \'' . $_POST['activite'] .'\'';
    

     $where = 'WHERE id > 0' . $parameter;

     $reponse_filtre = $bdd->query('SELECT * FROM `geo-agro` ' .  $where);
     // $reponse_filtre->execute($query_parameters);
     while($ligne_entreprise = $reponse_filtre->fetch()) 
         { 
             array_push($entreprises, $ligne_entreprise);
         }
     $reponse_filtre->closeCursor();
     
     $_SESSION['entreprise'] = "";
     foreach($entreprises AS $entreprise){
             $entreprise['Activite'] = utf8_encode($entreprise['Activite']);
             $_SESSION['entreprise'] = "{$_SESSION['entreprise']} [\"{$entreprise['Nom']}\", \"{$entreprise['Activite']}\", \"{$entreprise['Contact']}\", \"{$entreprise['Telephone']}\", \"{$entreprise['Employes']}\", {$entreprise['Lng']}, {$entreprise['Lat']} ],";
         };
     $_SESSION['entreprise'] = substr($_SESSION['entreprise'],0,-2) . "]";

 ?>
     
    
    <?php
        header('Location: ../index.php');      
    ?>
