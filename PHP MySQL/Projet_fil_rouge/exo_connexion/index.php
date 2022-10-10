<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>EXO DU 5 OCTOBRE 2022</title>
</head>
<body>
    <H1>Interrogation de la base de données achat_voiture</H1>
</body>
</html>

<?php
// connexion a la base de données.
require_once('connexion.php');
$connexion=connect_bd();
// requête pour la recherche.
$sql="SELECT nom_voiture from voitures";
// si la connexion échoue affichage du message d'erreur.
if(!$connexion->query($sql)) echo "Pb d'accès aux achats voitures";
else{
?>


<form method="post" action="recherche.php">
    Entrez un mot clé:
    <br>
    <input type="text" name="Mot" size="15">
    <br>
    <br>
    <input type="submit" value="Rechercher" alt="Lancer la recherche!">
</form>

<?php } ?>

</body>
</html>