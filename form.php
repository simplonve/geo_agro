<?php
    // On récupère tout le contenu de la table geo-agro

    $read_data = $bdd->prepare('SELECT DISTINCT Activite FROM `geo-agro`');
     $read_data->execute();
    ?>
    <div class="row">
        <form action="controller/controller_recherche.php" method="post">
            <div class="form-group ">
                <div class="col-md-offset-2 col-md-2">
                    <label class="label-rechercher" for="sel1">Choisir une activité :</label>
                </div>
                <div class="col-md-4">
                    <select class="form-control select" id="sel1" name="activite">
                        <?php
                        while($row = $read_data->fetch()){?>
                            <div class="col-md-offset-1 col-md-3">
                                <option value="<?php echo utf8_encode($row['Activite']); ?>">
                                    <?php echo utf8_encode($row['Activite']); ?>           
                                </option>
                            </div>
                        <?php } ?>
                    </select>
                </div>
                <div class="col-md-3">
                    <input class="btn btn-primary " type='submit' value="Rechercher" />
                </div>
            </div>
        </form>
    </div>
<?php
    $read_data->closeCursor();
?>
