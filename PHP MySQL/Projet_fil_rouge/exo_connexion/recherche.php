<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="utf-8">
        <title>Base de données voitures</title>
	</head>
	<body>
        <h1>Liste des voitures séléctionnées :</h1>
		<?php
		$mysqli = new mysqli("localhost", "root", "", "achat_voiture");
		$mysqli->set_charset("utf8");
		$requete = "select nom_voiture, definition, nom from voitures natural join types natural join modeles where nom_voiture = 'audi';";
		$resultat = $mysqli->query($requete);
		while ($ligne = $resultat->fetch_assoc()) {
			echo $ligne['nom_voiture']. ' ' . $ligne['definition']. ' ' . $ligne['nom'] . '<br>';
		}
		$mysqli->close();
		?>
	</body> 
</html>