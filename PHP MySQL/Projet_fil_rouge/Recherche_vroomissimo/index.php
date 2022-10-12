<?php

    $bdd = new PDO('mysql:host=localhost;dbname=achat_voiture;', 'root', '');
    $query = 'SELECT nom_voiture, nom, prix, annee, kilometrage, url_image, couleur_exterieure FROM voitures natural join modeles natural join prix natural join historique_vehicule natural join images natural join infos_supplementaires';
    $allcars = $bdd->query($query);


    if(isset($_GET['s_marque']) OR isset($_GET['s_modele']) OR isset($_GET['s_prix']) OR isset($GET['s_couleur'])) {

        $recherche = htmlspecialchars($_GET['s_marque']);
        $modele = htmlspecialchars($_GET['s_modele']);
        $prix = htmlspecialchars($_GET['s_prix']);
        $couleur = htmlspecialchars($_GET['s_couleur']);
        $condition = array();

        if(!empty($recherche)) {
            $condition[] = 'nom_voiture LIKE "%'.$recherche.'%"';      
        }

        if(!empty($modele)) {
            $condition[] = 'nom LIKE "%'.$modele.'%"';
        }

        if(!empty($prix)) {
            $condition[] = 'prix LIKE "%'.$prix.'%"';
        }

        if(!empty($couleur)) {
            $condition[] = 'couleur_exterieure LIKE "%'.$couleur.'%"';
        }

    $sql = $query;
    if (count($condition) > 0) {
        $sql .= " WHERE " . implode(' AND ', $condition);
    }

    $allcars = $bdd->query($sql);

    }

?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">    
    <title>Recherche de véhicules</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Bienvenue sur Vroomissimo</h1>
    <h2>Le site de recherche de véhicules AFPA 2022</h2>
    <form method="GET">
            <input type="search" name="s_marque" placeholder="Rechercher par marque">       
            <input type="search" name="s_modele" placeholder="Rechercher par modèle">       
            <input type="search" name="s_prix" placeholder="Rechercher par prix">
            <input type="search" name="s_couleur" placeholder="Rechercher par couleur">       
            <input type="submit" name="Valider">
    </form>
        <br>
    <div class="show_car">
        <table class="centre" id="jolie">
            <tr id="titre"><td>Marque</td> <td>Modèle</td> <td>Prix</td> <td>Année</td> <td>Kilométrage</td> <td>Photo</td></tr>
        <?php

            if($allcars->rowCount() > 0) {
                while($car = $allcars->fetch()) {
        ?>

            <tr><td><?= $car['nom_voiture'] ?></td>
                    <td><?= $car['nom'] ?></td>
                    <td><?= $car['prix'] ?> €</td>
                    <td><?= $car['annee'] ?></td>
                    <td><?= $car['kilometrage'] ?> kms</td>
                    <td class="image"><img src="<?= $car['url_image'] ?>"></td>
                    </tr>
        <?php            
                }
            } else {

        ?>
                    <p>Aucun véhicule trouvé</p>
        <?php
            }
        ?>
    </div>
</body>
</html>