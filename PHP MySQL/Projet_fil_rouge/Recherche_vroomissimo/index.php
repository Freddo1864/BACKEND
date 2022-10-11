<?php

    $bdd = new PDO('mysql:host=localhost;dbname=achat_voiture;', 'root', '');
    $query = 'SELECT nom_voiture, nom, prix, annee, kilometrage FROM voitures natural join modeles natural join prix natural join historique_vehicule';
    $allcars = $bdd->query($query);


    if(isset($_GET['s_marque']) OR isset($_GET['s_modele']) OR isset($_GET['s_prix'])) {

        $recherche = htmlspecialchars($_GET['s_marque']);
        $modele = htmlspecialchars($_GET['s_modele']);
        $prix = htmlspecialchars($_GET['s_prix']);
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
            <input type="submit" name="Valider">
    </form>
        <br>
    <section class="show_car">
        <table class="centre" id="jolie">
            <tr><td>Marque</td> <td>Modèle</td> <td>Prix</td> <td>Année</td> <td>Kilométrage</td></tr>
        <?php

            if($allcars->rowCount() > 0) {

                while($car = $allcars->fetch()) {
        ?>
            <table>
                <?php             
                 echo
                    "<tr><td>".$car['nom_voiture']."</td>
                    <td>".$car['nom']."</td>
                    <td>".$car['prix']."</td>
                    <td>".$car['annee']."</td>
                    <td>".$car['kilometrage']."</td></tr><br/>\n";
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