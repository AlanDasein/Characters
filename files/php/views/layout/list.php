<?php

$aux = Helper::getProperties($_SESSION["characters_factory"]["characters"]);
$odd = 1;
$output = "";

for($i = $_SESSION["characters_factory"]["characters"]->counter - 1, $j = -1;$i > $j;$i--) {

    if($_SESSION["characters_factory"]["characters"]->active[$i] === 1) {

        $output .=   "
                    <div class='col-xs-12 col-md-6 chart'>
                        <div class='panel panel-default block'>
                            <div class='panel-body text-left'>
                                <span dt-item='".$i."' class='close'>".(empty($pdf) ? "x" : "")."</span>
                                <table>
        ";

        foreach($aux as $k => $v) {

            if($k > 1) {

                $condition = $_SESSION["characters_factory"]["characters"]->{$v->name}[$i] === "";
                $blank = $content["specific"]->defaultValues->item[$v->name === "name" ? 0 : ($v->name === "notes" ? 1 : 2)];
                $title = $v->name === "name" || $v->name === "notes" ? ($content["specific"]->labels->item[$v->name === "name" ? 0 : 1]) : $_SESSION["characters_factory"]["categories"][$k - 3];
                $val = $_SESSION["characters_factory"]["characters"]->{$v->name}[$i];
                $val = $condition ? $blank : $val;
                $extra = $condition ? " class='text-warning'" : "";

                if($k === 2 && !empty($pdf)) {
                    $output .=  "<tr><td colspan='2'><h2>".$val."</h2><hr/></td></tr>";
                }
                else

                $output .=  "
                            <tr>
                                <td>".$title.":</td>
                                <td><div".$extra." dt-empty='".$blank."' dt-data='{\"id\":".$i.",\"prop\":\"".$v->name."\"}' contentEditable>".$val."</div></td>
                            </tr>
                ";

            }

        }

        $output .=  "
                            </table>
                        </div>
                    </div>
                </div>".(!empty($pdf) && $i > 0 ? "<pagebreak></pagebreak>" : "")."
        ";

        if($odd % 2 === 0) $output .= "<div class='clearfix'></div>";

        $odd++;

    }

}