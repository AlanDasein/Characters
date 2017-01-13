<p id="index">
    <small><?= $content["specific"]->text[0]; ?></small>
</p>

<div class="content" dt-modules="">

    <menu>
        <ul class="text-primary">

            <?php

            $index = 0;
            $total = count($content["specific"]->topics->item);

            foreach($content["specific"]->topics->item as $v) {

                echo "<li><a href='#topic".$index."'>".$v->title."</a>";

                $index++;

                if($index === $total) {
                    echo "<ul>";
                    foreach($v->subtopics->item as $w) echo "<li><a href='#topic".($index++)."'>".$w."</a></li>";
                    echo "</ul>";
                }

                echo "</li>";

            }

            ?>

        </ul>

    </menu>

    <br/><br/>

    <?php

    $index = 0;

    $template = "<div id='topic###INDEX###'>
                      <div class='panel panel-default'>
                          <div class='panel-body'>
                            <label>###TITLE###</label>
                            <hr/><br/>
                            ###TEXT###
                            <br/><hr/>
                            <a href='#index' class='pull-right'><small>".$content["specific"]->text[1]."</small></a>
                          </div>
                      </div>
                  </div><br/>";

    foreach($content["specific"]->topics->item as $v) {

        $index++;

        if($index === $total) {
            echo "<div class='clearfix'></div><br/><div id='topic".($index - 1)."'><h2>".$v->title."</h2><hr/><p><small>".$v->text."</small></p></div><br/><br/>";
            foreach($v->subtopics->item as $w) {
                $output = Helper::getSet($index - $total, $settings["langs"][$lang], $connection);
                echo str_replace("###INDEX###", ($index++), (str_replace("###TITLE###", $w, (str_replace("###TEXT###", $output, $template)))));
            }
        }
        else echo str_replace("###INDEX###", ($index - 1), (str_replace("###TITLE###", $v->title, (str_replace("###TEXT###", str_replace("<span>", "<span class='mark'>", $v->text), $template)))));

    }

    ?>

</div>
