<div class="content main" dt-modules="#social#" dt-title="<?= $content["common"]->title; ?>">

    <h3 class="col-xs-12 col-sm-5 col-md-4 title text-center">
        <?= $content["specific"]->title; ?>
        <div class="icons text-center">
            <a href="#" role="share" parm-w="570" parm-h="380" class="pull-left"><img src="files/assets/icon_facebook.png" /></a>
            <a href="#" role="share" parm-w="550" parm-h="570"><img src="files/assets/icon_google.png" /></a>
            <a href="#" role="share" parm-w="570" parm-h="335" class="pull-right"><img src="files/assets/icon_twitter.png" /></a>
        </div>
    </h3>

    <blockquote class="col-xs-12 col-sm-7 col-md-8 title">
        <?= $content["specific"]->description; ?>
    </blockquote>

    <div class="clearfix"></div>

    <div class="jumbotron">
        <h2 class="text-left"><?= $content["specific"]->panel->title; ?></h2>
        <p><?= $content["specific"]->panel->text; ?></p>
        <a href="?l=<?= $lang; ?>&p=1" class="btn btn-warning"><?= $content["specific"]->panel->button; ?></a>
    </div>

    <div class="col-xs-12">

        <br/>

        <h1 class="caption"><b><?= $content["specific"]->body->title; ?></b></h1>

        <br/>

        <div class="col-xs-12 col-sm-6">

            <p><?= str_replace("<b>", "<b class='text-warning'>", str_replace("<a1>", "<a href='?l=".$lang."&p=1'>", str_replace("<a3>", "<a href='?l=".$lang."&p=3'>", $content["specific"]->body->text[0]))); ?></p>

            <p><?= str_replace("<b>", "<b class='text-warning'>", str_replace("<a2>", "<a href='?l=".$lang."&p=2'>", $content["specific"]->body->text[1])); ?></p>

        </div>

        <div class="col-xs-12 col-sm-6">

            <p><?= str_replace("<b>", "<b class='text-warning'>", $content["specific"]->body->text[2]); ?></p>

            <p><?= str_replace("<a4>", "<a href='?l=".$lang."&p=4'>", $content["specific"]->body->text[3]); ?></p>

        </div>

    </div>

    <div class="clearfix"></div>

    <div class="col-xs-12 info">

        <h1 class="caption"><b><?= $content["specific"]->stats->title; ?></b></h1><br/>

        <?php

        $info["visitors"] = file_get_contents("files/inc/visitors.inc");
        $info["characters"] = file_get_contents("files/inc/characters.inc");
        $info["exports"] = file_get_contents("files/inc/exports.inc");
        $info["charactersByVisitors"] = $info["characters"] / $info["visitors"];
        $info["exportsByVisitors"] = $info["exports"] / $info["visitors"];
        $info["charactersByExports"] = $info["characters"] / $info["exports"];

        $index = 0;

        foreach($info as $v) {
            echo "<div class='col-xs-12'>
                    <span>".$content['specific']->stats->item[$index++]."</span>
                    <span class='numeric text-warning pull-right'>".($index < 3 ? number_format($v) : round($v, 1))."</span>
                  </div>";
        }

        ?>

    </div>

    <div class="clearfix"></div><br/>

    <div class="col-xs-12 jumbotron text-left">
        <h3 class="panel panel-warning text-center"><div class="panel-heading">¿Qué opinión han tenido los grandes escritores de sus personajes?</div></h3><br/>
        <?php
        foreach($content['specific']->quotes->item as $v) {
            echo "<div class='panel'>
                    <div class='panel-body'>
                        <blockquote".(empty($style) ? "" : $style).">
                            <p>".$v->cite."</p>
                            <footer class='text-warning'>".$v->author."</footer>
                        </blockquote>
                    </div>
                  </div><br/>";
            $style = empty($style) ? " class='blockquote-reverse'" : "";
        }
        ?>
    </div>

    <div class="clearfix"></div>

</div>