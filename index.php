<?php
include "files/php/_settings.php";
session_start();

header("Content-Type: text/html; charset=utf-8");
header("Content-Security-Policy: frame-ancestors none");

$lang = Helper::getParameters("l", $settings["langs"]);

$page = Helper::getParameters("p", $settings["pages"]);

$path = "files/xml/".$settings["langs"][$lang]."/";

$content = array("common" => simplexml_load_file($path."_global.xml"), "specific" => simplexml_load_file($path.$settings["pages"][$page].".xml"));

if($_POST) {
    $file = empty($_POST["control"]) ? "" : Helper::decrypt($_POST["control"]);
    if(file_exists("files/php/controllers/".$file.".php")) include "files/php/controllers/".$file.".php";
    else die();
    header("Location: index.php?l=".$lang."&p=".$page);
    exit();
}

if(empty($_SESSION["characters_factory"]) || $_SESSION["characters_factory"]["current_language"] !== $lang) {
    $param = array("oper" => "general", "lang" => $settings["langs"][$lang], "sort" => "`sort`", "table" => "ch_categories");
    $categories = Helper::getRecords($connection, $param);
    $items = array(
        Helper::getRecords($connection, array_replace($param, array("table" => "ch_races"))),
        Helper::getRecords($connection, array_replace($param, array("table" => "ch_sexuality")))
    );
    $_SESSION["characters_factory"] = array(
        "characters" => empty($_SESSION["characters_factory"]) ? new Characters() : $_SESSION["characters_factory"]["characters"],
        "categories" => $categories,
        "items" => $items,
        "current_language" => $lang,
        "access_time" => empty($_SESSION["characters_factory"]["access_time"]) ? $time : $_SESSION["characters_factory"]["access_time"]
    );
    if(empty($_SESSION["characters_factory_admin"])) Helper::manageCounters("files/inc/visitors");
}
else if(!empty($_GET["reset"]) && $_GET["reset"] == 1) include "files/php/controllers/session.php";
else if(!empty($_GET["recover"]) && $_GET["recover"] == 1) include "files/php/controllers/recover.php";

?>

<!DOCTYPE html>
<html>
<head>
    <?php include "files/php/views/layout/meta.php"; ?>
</head>
<body class="hidden" dt-settings='<?= json_encode(array("age" => array($settings["ranges"]["age"]["min"], $settings["ranges"]["age"]["max"]), "options" => array($settings["ranges"]["options"]["min"], $settings["ranges"]["options"]["max"]))); ?>'>
    <header>
        <?php include "files/php/views/layout/global.php"; ?>
    </header>
    <section class="container page text-justify">
        <?php if($content["common"]->menu->item[$page] != "") echo "<header><h1>".$content["common"]->menu->item[$page]."</h1><hr/></header>"; ?>
        <article><?php include "files/php/views/pages/".$settings["pages"][$page].".php"; ?></article>
    </section>
    <footer class="hidden">
        <span><?php if(!empty($_SESSION["characters_factory"]["alert"])) echo $_SESSION["characters_factory"]["alert"]; ?></span>
        <?php foreach($content["common"]->alerts->item as $v) { ?>
        <span><?= $v; ?></span>
        <?php } ?>
    </footer>
    <div id="modal" class="modal fade" tabindex="-1" data-keyboard="false" data-backdrop="static" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header"></div>
                <div class="modal-body"></div>
                <div class="modal-footer" dt-btn="<?= $content["common"]->modalButtons->item[0]; ?>,<?= $content["common"]->modalButtons->item[1]; ?>"></div>
            </div>
        </div>
    </div>
</body>
</html>

<?php $_SESSION["characters_factory"]["alert"] = ""; ?>