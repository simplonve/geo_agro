<?php 
    session_start();
?>

<!doctype html>
<html>
    <head>
      <meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />
      <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.7.2/leaflet.css" />
      <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
      <link href="css/style.css" rel="stylesheet" media="screen">
      <script src="js/jquery.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="http://cdn.leafletjs.com/leaflet-0.7.2/leaflet.js"></script> 
      <title>Geoloc Agro</title>
    </head>
    <body>
        <?php 
        include('model/bdd_connect.php');
        include('form.php')
        ?>   
        <!-- <div id="map"></div> -->
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
    </body>
</html>
