<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exo du 17 octobre - fonction echo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>

<body>

    <?php
$text =
    <<<fred
    <table class="table">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nom</th>
                <th scope="col">Prenom</th>
                <th scope="col">Age</th>
                <th scope="col">Sexe</th>
                <th scope="col">Profession</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row">1</th>
                <td>Judor</td>
                <td>Erika</td>
                <td>25</td>
                <td>Feminin</td>
                <td>Comedien</td>                
            </tr>
            <tr>
                <th scope="row">2</th>
                <td>Bedia</td>
                <td>Ramzy</td>
                <td>26</td>
                <td>Masculin</td>
                <td>Artiste</td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td>Quertaimont</td>
                <td>Frédéric</td>
                <td>43</td>
                <td>Masculin</td>
                <td>Développeur Web Junior</td>
            </tr>            
        </tbody>
    </table>    

fred; 

echo($text);

echo nl2br("\n Ceci est un tableau");

    ?>

    

</body>

</html>