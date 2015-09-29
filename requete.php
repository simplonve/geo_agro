<?php
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
    $_POST['activité'] == "" ? $parameter = "" : $paramater = 'WHERE Activite = ' . $_POST['activité'];
 

    $where = $parameter;

    $reponse_filtre = $bdd->prepare('SELECT * FROM `geo-agro`' .  $where);
    $reponse_filtre->execute($query_parameters);
    while($ligne_entreprise = $reponse_filtre->fetch()) 
        { 
            array_push($entreprises, $ligne_entreprise);
        }
    $reponse_filtre->closeCursor();
    
    $_SESSION['entreprise'] = "";
    foreach($entreprises AS $entreprise){
            $_SESSION['entreprise'] = "{$_SESSION['entreprise']} [\"{$entreprise['Nom']}\", \"{$entreprise['Activite']}\", \"{$entreprise['Contact']}\", \"{$entreprise['Telephone']}\", \"{$entreprise['Employes']}\", {$entreprise['Lng']}, {$entreprise['Lat']} ],";
        };
    $_SESSION['entreprise'] = substr($_SESSION['entreprise'],0,-2) . "]";

?>
    
    <div id="map"></div>
    <script type="text/javascript">
        var map = L.map('map').setView([44.729735,5.2386539], 9);
        L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', { attribution: 'Map data &copy; <a href="http://www.osm.org">OpenStreetMap</a>' }).addTo(map);

        var myItems = [<?php echo $_SESSION['entreprise'] ?>]      

        var markers = new L.featureGroup();
        for (var i = 0; i < myItems.length; i++) {
            var item = myItems[i];
            marker = new L.marker([item[6],item[5]]).bindPopup(
                "Nom de l'entreprise : " + item[0] + "</b><br /> Activité : " + item[1] + "</b><br /> Contact : " + item[2] + "</b><br /> Téléphone : " + item[3] + "</b><br /> Nombre d'employés : " + item[4]
                );
            markers.addLayer(marker);
        }

        markers.on('mouseover', function(e){ e.layer.openPopup(); })
        .on('mouseout', function(e){ e.layer.closePopup(); });
        map.addLayer(markers);
        map.fitBounds(markers.getBounds());
    </script>
