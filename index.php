<?php 
    session_start();
?>

<!doctype html>
<html>
    <head>
      <meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />
      <link rel="stylesheet" href="css/leaflet.css" />
      <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
      <link href="css/style.css" rel="stylesheet" media="screen">
      <script src="js/jquery.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/leaflet.js"></script> 
      <title>Geoloc Agro</title>
    </head>
    <body>
        <?php 
        include('model/bdd_connect.php');?>
        <div class="filtre-image">  
            <div class="jumbotron">
                <h1 class="titre">Les entreprises de l’Agroalimentaire en</h1>
                <h1 class="titre">Drôme Ardèche</h1>
                <?php include('form.php');?>
            </div>
        </div>
        <h2 class="titre-activite-affiche">Secteur d'activité : <?php echo $_SESSION['activite']; ?></h2>   
        <div id="map"></div> 
        <script type="text/javascript">
            var map = L.map('map').setView([44.729735,5.2386539], 9);
            map.scrollWheelZoom.disable();
            var myIcon = L.icon({
                iconUrl: 'images/marker-icon.png'
            });
            L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', { attribution: 'Map data &copy; <a href="http://www.osm.org">OpenStreetMap</a>' }).addTo(map);

            var myItems = [<?php echo $_SESSION['entreprise'] ?>]      

            var markers = new L.featureGroup();
            for (var i = 0; i < myItems.length; i++) {
                var item = myItems[i];
                marker = new L.marker([item[6],item[5]], {icon: myIcon}).bindPopup(
                    "Nom de l'entreprise : " + item[0] + "</b><br /> Activité : " + item[1] + "</b><br /> Contact : " + item[2] + "</b><br /> Téléphone : " + item[3] + "</b><br /> Nombre d'employés : " + item[4]
                    );
                markers.addLayer(marker);
            }

            markers.on('mouseover', function(e){ e.layer.openPopup(); })
            .on('mouseout', function(e){ e.layer.closePopup(); });
            map.addLayer(markers);
            map.fitBounds(markers.getBounds());
        </script>   
    </body>
</html>
