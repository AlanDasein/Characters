<p>
    <small><?= $content["specific"]->text[0]; ?></small>
</p>

<div class="content" dt-modules="#option#form#modal#ajax#">

    <div class="col-xs-12 col-sm-6">

        <form method="post" class="panel panel-default">
            <input type="hidden" name="l" value="<?= $lang; ?>" />
            <input type="hidden" name="p" value="<?= $page; ?>" />
            <input type="hidden" name="control" value="<?= Helper::encrypt("contact"); ?>" />
            <div class="panel-body">

                <?= $content["specific"]->headers->item[0]; ?>
                <hr/><br/>

                <div class="board">

                    <div class="emblem"><?= $content["specific"]->form->labels->item[0]; ?></div>
                    <div><input type="text" name="name" /><span class="bar"></span></div><br/>

                    <div class="emblem"><?= $content["specific"]->form->labels->item[1]; ?></div>
                    <div><input type="email" name="email" /><span class="bar"></span></div><br/>

                    <div class="emblem"><?= $content["specific"]->form->labels->item[2]; ?></div>
                    <div>
                        <select name="subject">
                            <option></option>
                            <?php
                            foreach($content["specific"]->form->options->item as $v) echo "<option>".$v."</option>";
                            ?>
                        </select>
                        <span class="bar"></span>
                    </div><br/>

                    <div class="emblem"><?= $content["specific"]->form->labels->item[3]; ?></div>
                    <div><textarea name="message"></textarea><span class="bar"></span></div><br/>

                    <div class="emblem">
                        <?php $kaptcha = Helper::kaptcha(); ?>
                        <?= $content["specific"]->form->placeholder->item[0]; ?> <?= $content["specific"]->form->placeholder->item[is_numeric($kaptcha[0]) ? 1 : 2]; ?>&nbsp;
                        <b><?= $kaptcha[0]; ?> - <span class="kaptcha" dt-ref="<?= $kaptcha[1]; ?>">?</span> - <?= $kaptcha[2]; ?></b>
                    </div>
                    <div><input type="text" name="kaptcha" /><span class="bar"></span></div>

                </div>


                <div class="text-right text-warning">
                    <small><i><?= $content["specific"]->form->sign; ?></i></small>&nbsp;<br/><br/>
                    <button type="submit" class="btn btn-warning">ENVIAR</button>
                </div>
            </div>
        </form>

        <br/>

        <div class="panel panel-default">
            <div class="panel-body">
                <?= $content["specific"]->headers->item[2]; ?>
                <hr/><br/>
                <p><small><?= $content["specific"]->text[1]; ?></small></p>
                <div>
                    <b><?= $content["specific"]->text[2]; ?>:</b><br/>
                    <span>1KtA6PXUeFY2aeQa9XnG3zmtvVBgi52Yh3</span>
                </div>
                <br/>
                <img src="files/assets/qr.png?v=<?= $time; ?>" />
            </div>
        </div>

        <br/>

    </div>

    <div class="col-xs-12 col-sm-6">

        <?php $survey = empty($_SESSION["characters_factory"]["survey"]); ?>

        <?php if ($survey) { ?>

        <form method="post">
            <input type="hidden" name="l" value="<?= $lang; ?>" />
            <input type="hidden" name="p" value="<?= $page; ?>" />
            <input type="hidden" name="control" value="<?= Helper::encrypt("survey"); ?>" />
            <input type="hidden" name="data" />

        <?php } ?>

            <div class="panel panel-default">
                <div class="panel-body">

                    <?php

                    $index = 0;

                    if(!$survey) {

                        $groups = array();
                        $param = array("table" => "gn_survey", "fields" => array());

                        $param["fields"][] = "COUNT(*) as total";

                        foreach($content["specific"]->survey->sections->item as $v) {
                            $groups[] = count($v->topics->item);
                            foreach($v->topics->item as $w) $param["fields"][] = "SUM(`p".(++$index)."`) as `t".$index."`";
                        }

                        $results = Helper::getData($connection, $param);

                        foreach($results[0] as $k => $v) {
                            if($k !== "total") $results[0][$k] = round(($results[0][$k] / $results[0]["total"]), 1);
                        }

                        $results[0]["groups"] = array();

                        $index = 0;

                        foreach($groups as $v) {
                            $aux = 0;
                            for($i = $index, $j = $index + $v;$i < $j;$i++) $aux += $results[0]["t".($i + 1)];
                            $results[0]["groups"][] = round(($aux / $v), 1);
                            $index += $v;
                        }

                        $aux = 0;

                        foreach($results[0]["groups"] as $v) $aux += $v;

                        $general = round(($aux / count($groups)), 1);

                        $points = count($content["specific"]->survey->buttonLabels->item);

                        $index = 0;

                    }

                    echo $content["specific"]->headers->item[1].($survey ? "<hr/><p><small>".$content["specific"]->survey->text[0]."</small></p>" : ("<small class='pull-right text-warning numeric'><b>".Helper::abreviateNumber($results[0]["total"])."&nbsp;".$content["specific"]->text[6]."</b></small><hr/>"))."<br/>";

                    $counter = 0;
                    $output = "";

                    foreach($content["specific"]->survey->sections->item as $v) {

                        if($survey) $output .= "<div class='group'><b>".$v->title."</b>";
                        else {
                            $aux = $results[0]["groups"][$counter++];
                            $output .= "<ul class='list-unstyled group'>
                                            <li>
                                                <b>".$v->title."</b>
                                                <div class='pull-right'>
                                                    <span class='score text-warning numeric'><b>".Helper::formatNumber($aux)."</b></span>
                                                    <div class='stars'>
                                                        <div style='width:".(($aux / $points) * 100)."%'></div><img src='files/assets/stars.png' />
                                                    </div>
                                                </div>
                                            </li>";
                        }

                        foreach($v->topics->item as $w) {

                            if($survey) $output .= "<div class='group'><u>".$w."</u><div class='line'><div class='items serie'>";
                            else {
                                $aux = Helper::formatNumber($results[0]["t".($index + 1)]);
                                $output .= "<ul class='list-unstyled group'>
                                            <li>
                                                <u>".$w."</u><br/>
                                                <div class='stars'>
                                                    <div style='width:".(($aux / $points) * 100)."%'></div><img src='files/assets/stars.png' />
                                                </div>
                                                <label class='score text-warning numeric'>".$aux."</label>
                                            </li>";
                            }

                            if($survey) {
                                foreach($content["specific"]->survey->buttonLabels->item as $x) {
                                    $output .= "<div class='group radiobutton slave clickable'><span>&#x2713;</span>&nbsp;&nbsp;".$x."</div>";
                                }
                            }

                            $output .= ($survey ? "</div></div></div>" : "</ul>");

                            $index++;

                        }

                        $output .= ($survey ? "</div>" : "</ul>");

                    }

                    echo $output;

                    ?>

                    <hr/><br/>

                    <?php if ($survey) { ?>

                    <div class="text-right"><button type="submit" class="btn btn-warning">ENVIAR</button></div>

                    <?php } else { ?>

                    <div class="pull-left"><b><?= $content["specific"]->text[5]; ?></b></div>
                    <div class="pull-right">
                        <span class='score text-warning'><b class="numeric"><?= Helper::formatNumber($general); ?></b></span>
                        <div class='stars'>
                            <div style='width:<?= (($general / $points) * 100); ?>%'></div><img src='files/assets/stars.png' />
                        </div>
                    </div>

                    <?php } ?>

                </div>
            </div>
        </form>
    </div>

    <div class="clearfix"></div><br/><br/>

</div>