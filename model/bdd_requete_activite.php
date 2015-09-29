<?php
    // On récupère tout le contenu de la table geo-agro

    $read_data = $bdd->prepare('SELECT DISTINCT Activite FROM `geo-agro`');
     $read_data->execute();
    ?>
    <form action="#" method="post">
     <div class="form-group">
      <label for="sel1">Select list:</label>
      <select class="form-control" id="sel1">
        <?php
          while($row = $read_data->fetch()){
        ?>
            <option>
                <?php echo utf8_encode($row['Activite']); ?>           
            </option>
        <?php   
        }
        ?>
      </select>
    </div>
    <input type='submit' type="text" name="Blabla" />
    </form>
    <?php
    $read_data->closeCursor();
?>
