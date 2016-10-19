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

$prodotti->createTableProdotto();

?>
<!DOCTYPE HTML>

<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Schede gioielli</title>
    </head>

    <body>

    <form method="post" action="" id="insert_product">


        <div><input type="text" name="titolo" id="titolo" /><label for="titolo">Nome prodotto</label></div>
        <div><input type="text" name="codice" id="codice" /><label for="codice">Codice prodotto</label></div>
        <div><input type="text" name="materiale" id="materiale" value="alluminio"/><label for="materiale">Materiale prodotto</label></div>
        <div><input type="text" name="coverImg" id="coverImg"/><label for="coverImg">Immagine prodotto</label></div>
        <div><input type="text" name="techImg" id="techImg"/><label for="techImg">Immagine tecnica prodotto</label></div>
        <div><input type="text" name="prezzo" id="techImg" value="0"/><label for="techImg">Prezzo prodotto</label></div>

        <div><input type="submit" name="inserisci" /></div>


    </form>

    <?php if(isset($_REQUEST['inserisci'])){

        $post=$_REQUEST;
        $response=$prodotti->createProdotto($post);

        print_r( $response );

    }?>


    </body>

</html>