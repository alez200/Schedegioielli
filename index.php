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

print_r($prodotti->getAll());

?>
<!DOCTYPE HTML>

<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Schede gioielli</title>
    </head>

    <body>

        <!-- COLLANE -->
        <section>
            <h1>COLLANE</h1>

            <article>

                <h2>Titolo prodotto</h2>
                <img alt="foto" title="foto" src="" />
                <p>Descrizione e info varie</p>

            </article>
        </section>

        <!-- ANELLI -->
        <section>
            <h1>ANELLI</h1>
        </section>

        <!-- BRACCIALETTI -->
        <section>
            <h1>BRACCIALETTI</h1>
        </section>

        <!-- ORECCHINI -->
        <section>
            <h1>ORECCHINI</h1>
        </section>


    </body>

</html>