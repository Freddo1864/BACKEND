<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exo du 17 octobre - Différence entre les instructions : sprintf et printf</title>
</head>

<body>
    <?php

        $euro = 6.55957;
        printf("%.2f FF<br/>", $euro);
        $money1 = 68.7523;
        $money2 = 54.3573;

        $money = $money1 + $money2;
        echo "1. affichage sans printf : " . $money . "<br/>";

        $monFormat = sprintf("%01.2f", $money);
        echo "2. affichage avec printf : " . $monFormat . "<br/>";

        $year = "2002";
        $month= "4";
        $day = "5";

        $varDate = sprintf("%04d-%02d-%02d", $year, $month, $day);
        echo "3. affichage avec sprintf : " . $varDate;

    ?>
<br>
<br>
    <?php
        $num = 5;
        $location = 'tree';
        $fred = 25;
        $newLocation = 'buissons';


        $format = 'There are %d monkeys in the %s and %s tigres in the %d';
        echo printf($format, $num, $location, $fred, $num);
    ?>

</body>

</html>