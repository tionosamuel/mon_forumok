<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
<table>
    <?php
    require_once 'config.inc.php';
    //récupérer la recherche
    $recherche = isset($_POST['search']) ? $_POST['search'] : '';

    //la requête mysql
    $q = $con->query("SELECT * FROM users WHERE username like '%$recherche' or email like '%$recherche' or password like '%$recherche' or date like '%$recherche' or image like '%$recherche' or bio like '%$recherche' or fb like '%$recherche' or tw like '%$recherche' or yt like '%$recherche' LIMIT 10");
    //affichage du résultat
    while($row = mysqli_fetch_array($q)){
        ?>
        <tr>
        <td><?=$row['username']?></td>
        <td><?=$row['email']?></td>
        <td><?=$row['password']?></td>
        <td><?=$row['date']?></td>
        <td><?=$row['image']?></td>
        <td><?=$row['bio']?></td>
        <td><?=$row['fb']?></td>
        <td><?=$row['tw']?></td>
        <td><?=$row['yt']?></td>
        
    </tr>
    <?php

    }
    ?>
</table>
</body>
</html>
