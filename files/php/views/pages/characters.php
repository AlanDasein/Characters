<?php if($_SESSION["characters_factory"]["characters"]->counter === 0) { ?>

    <p>
        <small>
            <?= $content["specific"]->instructions->item[1]; ?>
            <?= str_replace("<a>", "<a href='?l=".$lang."&p=3'>", $content["common"]->links->item[0]); ?>
        </small>
    </p>

<?php } else { $items = $_SESSION["characters_factory"]["characters"]->reckon(); ?>

    <p>
        <small>
            <?= $content["specific"]->instructions->item[0]; ?>
            <?= str_replace("<a>", "<a href='?l=" . $lang . "&p=3'>", $content["common"]->links->item[0]); ?>
        </small>
    </p>

    <div class="commands">

        <?php foreach($content["specific"]->commands->item as $v) { ?>
            <span class="col-xs-12 col-md-4 clickable text-center"><small><?= $v; ?></small></span>
        <?php } ?>

        <div class="clearfix"></div>

    </div>

<?php } ?>

<div class="content" dt-modules="#modal#ajax#edit#command#">

    <?php
        if(!empty($items) && $items > 0) {
            include "files/php/views/layout/list.php";
            echo $output;
        }
    ?>

    </div>

    <div class='clearfix'></div><br/><br/><br/><br/>

</div>

