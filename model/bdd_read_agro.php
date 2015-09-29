<?php
	// On récupère tout le contenu de la table geo-agro

    $read_data = $bdd->prepare('SELECT * FROM `geo-agro`');
     $read_data->execute();
      while($row = $read_data->fetch()){

      	echo iconv('UTF-8', 'ISO-8859-1', $row['Nom']);
      	?>
      	</br>
      	<?php
      	echo iconv('UTF-8', 'ISO-8859-1', $row['Activite']);
      	?>
      	</br>
      	<?php
      	echo $row['Contact'];
      	?>
      	</br>
      	<?php
      	echo $row['Telephone'];
      	?>
      	</br>
      	<?php
      	echo $row['Employes'];
      	?>
      	</br>
      	<?php
      	echo $row['Lng'];
      	?>
      	</br>
      	<?php
      	echo $row['Lat'];
      	?>
      	</br></br>
      	<?php
      }
 	$read_data->closeCursor();
?>