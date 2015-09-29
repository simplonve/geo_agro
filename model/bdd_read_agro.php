<?php
	// On récupère tout le contenu de la table geo-agro

      $read_data = $bdd->query('SELECT * FROM geo-agro');

      while ($row = $read_data->fetch()){

      echo $row['Nom'];

      }
 
 	$read_data->closeCursor();

?>