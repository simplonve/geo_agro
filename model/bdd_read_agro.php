<?php
	// On récupère tout le contenu de la table geo-agro

    $read_data = $bdd->prepare('SELECT * FROM `geo-agro`');
     $read_data->execute();
      while($row = $read_data->fetch()){

      	echo $row['Nom'];
      	?>
      	</br>
      	<?php
      }
 	$read_data->closeCursor();


?>