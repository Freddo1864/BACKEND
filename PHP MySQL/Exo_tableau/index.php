<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./style.css">
</head>

<body>
    <?php

    $tabEtud = array(
        'Jimmy' => 13,
        'Fred' => 15,
        'Oceane' => 11,
        'Outman' => 14,
        'Karim' => 14
    );

    echo "<table>";
    echo "<tr class='fred'><td>Nom</td><td>Note</td></tr>";
    ksort($tabEtud);
    foreach ($tabEtud as $key => $value) {
        
        print "<tr><td>$key</td><td>$value</td></tr>";
        
    }

    echo "</table>";

    ?>

</body>

</html>