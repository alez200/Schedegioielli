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
    $layout = '/Layout/layout.phtml';
    $title_page = 'Lista prodotti';

    define( "MEDIA_URL", $_SERVER['REQUEST_URI']."Asset" );
    define( "TITLE_SITE", "New or Review Design" );

?>



<?php ob_start() ?>



    <section class="[ productList ] [ grid__row ]"><!-- Lista Prodotti  -->

        <h1 class="[ productCoverList__title ] [ grid__col ]" >
            Elenco gioielli
        </h1>

        <?php foreach($lista as $key => $prodotto) { ?>

        <article class="[ productList__item ] [ grid__row ]">

            <div class="[ productList__item__img ][ grid__col grid__col--w20 ]">
                <div>
                    <img src="Asset/Img/<?php echo $prodotto['coverImg']; ?>">
                </div>
            </div>

            <div class="[ productList__item__title ][ grid__col grid__col--w80 ]">
                <div>
                    <h2><?php echo $prodotto['titolo']; ?></h2>
                    <p><strong>Prezzo:</strong> <?php echo $prodotto['prezzo']; ?></p>
                    <p><strong>Anno di composizione:</strong> <?php echo explode('-',$prodotto['insertDate'])[0]; ?></p>
                </div>
            </div>

        </article>

        <?php }; ?>


    </section>






<?php $content = ob_get_clean() ?>

<?php require_once ($layout) ?>