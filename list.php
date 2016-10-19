<?php
/**
 * Created by PhpStorm.
 * User: Bakeca
 * Date: 17/10/2016
 * Time: 16:41
 */


// carico l'Autoload delle classi

require_once( 'Application' . DIRECTORY_SEPARATOR . 'Autoloader.php' );

$prodotti= new Models_product();
$lista = $prodotti->getAll();


//$prodotti->createTableProdotto();

?>
<!DOCTYPE HTML>

<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Schede gioielli</title>
    </head>

    <body>



<h1>Elenco gioielli</h1>

    <?php

        foreach($lista as $key => $prodotto) {

    ?>

            <div class="single_item">
                <h2><?php echo $prodotto['titolo']; ?></h2>
                <img src="Asset/Img/<?php echo $prodotto['coverImg']; ?>">
            </div>



    <?php
        };

    ?>


    </body>

</html>