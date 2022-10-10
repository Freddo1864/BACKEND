<?php
// accès a la base de données achat_voiture.
    $bdd = new PDO('mysql:host=localhost;dbname=achat_voiture;', 'root', '');
// Requête pour récupérer toutes les nom_voiture de la table voitures.
    $allcars = $bdd->query('SELECT * FROM donnees_de_base');
// On vérifie si l'utilisateur a bien effectué sa recherche.
    if(isset($_GET['s']) AND !empty($_GET['s'])) {
// On stocke la recherche de l'utilisateur dans la variable ==> $recherche.
        $recherche = htmlspecialchars($_GET['s']);
// Requête pour vérifier dans la table le nom de la voiture entré par la recherche de l'utilisateur.
        $allcars = $bdd->query('SELECT carrosserie, version_pays, nom_voiture FROM donnees_de_base NATURAL JOIN voitures WHERE carrosserie LIKE "%'.$recherche.'%"');
    }
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">    
    <title>Rechercher des utilisateurs</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <form method="GET">
        <input type="search" name="s" placeholder="Rechercher">
        <input type="submit" name="Envoyer">
    </form>

    <section class="show_voiture">
        <?php
// On vérifie qu'on a bien récupéré au moins un véhicule à partir de la requête.
            if($allcars->rowCount() > 0) {
// On affiche tous les véhicules de la table voitures.
                while($car = $allcars->fetch()) {
        ?>
<!-- On affiche tous les véhicules dans un paragraphe. -->
            <table>
                <tr><td>Carrosserie</td><td>Pays</td><td>Marque</td></tr>
                <?php             
                echo 
                    $car['carrosserie']. ' ' .
                    $car['version_pays']. ' ' .
                    $car['nom_voiture'];
                ?>
            </table>
        <?php            
                }
            } else {

        ?>
                    <p>Aucun véhicule trouvé</p>
        <?php
            }
        ?>
    </section>
</body>
</html>