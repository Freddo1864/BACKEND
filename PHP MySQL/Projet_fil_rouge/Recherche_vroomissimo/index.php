<?php

// Accès à la base de données avec l'objet PDO.
    $bdd = new PDO('mysql:host=localhost;dbname=achat_voiture;', 'root', '');

// Requête pour la recherche dans la base de données.
    $query = 'SELECT nom_voiture, nom, prix, annee, kilometrage, url_image, couleur_exterieure FROM voitures natural join modeles natural join prix natural join historique_vehicule natural join images natural join infos_supplementaires';

// La fonction query exécute une requête sql en appelant une seule fonction    
    $allcars = $bdd->query($query);


// La fonction isset vérifie si la variable est définie.
// La variable superglobable $_GET contient les données envoyées en paramètres dans l'URL.
    if(isset($_GET['s_marque']) OR isset($_GET['s_modele']) OR isset($_GET['s_prix']) OR isset($GET['s_couleur'])) {

        $recherche = htmlspecialchars($_GET['s_marque']);
        $modele = htmlspecialchars($_GET['s_modele']);
        $prix = htmlspecialchars($_GET['s_prix']);
        $couleur = htmlspecialchars($_GET['s_couleur']);
        $condition = array();
// La fonction empty vérifie si la variable est définie et si celle-ci est égale à NULL, "", 0, etc....
        if(!empty($recherche)) {
            $condition[] = 'nom_voiture LIKE "%'.$recherche.'%"';      
        }
// Concaténation de la requête $query avec la condition de recherche par le "nom" de la table "modele".
        if(!empty($modele)) {
            $condition[] = 'nom LIKE "%'.$modele.'%"';
        }
// Concaténation de la requête $query avec la condition de recherche par le "prix" de la table "prix".
        if(!empty($prix)) {
            $condition[] = 'prix LIKE "%'.$prix.'%"';
        }
// Concaténation de la requête $query avec la condition de recherche par la "couleur" de la table "couleur_exterieure".
        if(!empty($couleur)) {
            $condition[] = 'couleur_exterieure LIKE "%'.$couleur.'%"';
        }
// Requête $sql est égale à la requête $query + "WHERE" + condition + ordre de tri decroissant.
    $sql = $query;
    if (count($condition) > 0) {
        $sql .= " WHERE " . implode(' AND ', $condition) . ' ORDER BY prix DESC';
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
    <div id="demotext">
    <h1>Bienvenue sur Vroomissimo</h1>
    <h2>Le site de recherche de véhicules AFPA 2022</h2>
    
    <form method="GET">
        <label for="marque" >Marque : </label>
            <input type="search" name="s_marque">
        <label for="marque" >Modèle : </label>   
            <input type="search" name="s_modele">
        <label for="marque" >Prix : </label>
            <input type="search" name="s_prix">
        <label for="marque" >Couleur : </label>
            <input type="search" name="s_couleur">
            <br>      
            <input type="submit" name="Valider">
    </form>
    </div>
        <br>
    <div class="show_car">
        <table class="centre" id="jolie">
            <tr id="titre"><td>Photo</td><td>Marque</td> <td>Modèle</td> <td>Prix</td> <td>Année</td> <td>Kilométrage</td> </tr>
        <?php
// On vérifie que la variable $allcars contient bien une requête. Donc différent de zéro.
            if($allcars->rowCount() > 0) {
// On boucle sur tout les véhicules présents dans la BDD.
                while($car = $allcars->fetch()) {
                    ?>
<!-- Création d'un tableau pour y stocker tout les véhicules. -->
                <tr>
                    <td class="image"><a href=page1.php><img src="<?= $car['url_image'] ?>"/></a></td>                    
                    <td><?= $car['nom_voiture'] ?></td>
                    <td><?= $car['nom'] ?></td>
                    <td><?= $car['prix'] ?> €</td>
                    <td><?= $car['annee'] ?></td>
                    <td><?= $car['kilometrage'] ?> kms</td>
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