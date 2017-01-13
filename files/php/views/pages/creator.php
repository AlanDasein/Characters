<p>
    <small>
        <?= $content["specific"]->text[0]; ?>
        <?= str_replace("<a>", "<a href='?l=".$lang."&p=3'>", $content["common"]->links->item[0]); ?>
    </small>
</p>

<div class="content" dt-modules="#option#selector#form#modal#">

    <form method="post">

        <input type="hidden" name="l" value="<?= $lang; ?>" />
        <input type="hidden" name="p" value="2" />
        <input type="hidden" name="control" value="<?= Helper::encrypt("create"); ?>" />
        <input type="hidden" name="data" />

        <?php

        foreach($_SESSION["characters_factory"]["categories"] as $k => $v) {

            echo "<div class='line'>
                    <div class='box pull-left numeric text-center'>".($k + 1)."</div>
                    <div class='spacer pull-left'>&nbsp;</div>
                    <div class='holder pull-left'><div class='arrow'></div></div>
                    <div class='block'>
                        <div class='panel'>
                            <div class='panel-body'>
                                ".$v."
                                <hr/>";

            if($k !== 3 && $k !== 5) {

                $aux = $k === 1 ? "age" : ($k >= 6 ? "options" : "");

                echo "<div class='items serie'".($aux === "" ? "" : " dt-group='".$aux."'").">";

                if($k === 1 || $k >= 6) {

                    for($i = 0;$i < 2;$i++) {
                        echo "<div class='selector' dt-subgroup='".$i."'>
                                <span class='buttonselect clickable text-center'>+</span>
                                <label class='numeric text-center'>".$settings["ranges"][$aux]["default"][$i === 0 ? "min" : "max"]."</label>
                                <span class='buttonselect clickable text-center'>-</span>
                                &nbsp;&nbsp;&nbsp;&nbsp;".$content["specific"]->commonText[0]->item[($i + 1)]."
                              </div>";
                    }

                }
                else {

                    $group = $k === 0 ? $content["common"]->groupCategory->item : $_SESSION["characters_factory"]["items"][$k === 2 ? 0 : 1];

                    for($i = 0;$i < count($group);$i++) {
                        echo "<div class='slave checkbutton clickable'><span>&#x2713;</span>&nbsp;&nbsp;".$group[$i]."</div>";
                    }

                    echo "<div class='control checkbutton clickable text-warning'><span>&#x2713;</span>&nbsp;&nbsp;".$content["specific"]->commonText[0]->item[0]."</div>";

                }

                echo "</div><hr/>";

            }

            echo "                        <div class='items".($k === 3 || $k === 5 ? " serie" : "")."'>
                                        <div class='main checkbutton clickable text-warning'><span>&#x2713;</span>&nbsp;&nbsp;".$content["specific"]->commonText[0]->item[3]."</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br/>";

        }

        ?>

        <button type="submit" class="btn btn-warning pull-right"><?= $content["specific"]->button; ?></button>

        <div class="clearfix"></div>

        <br/>

    </form>

</div>