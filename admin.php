<?php
include "files/php/_settings.php";
session_start();

header("Content-Type: text/html; charset=utf-8");
header("Content-Security-Policy: frame-ancestors none");

$lang = 0;
$page = 4;

$path = "files/xml/".$settings["langs"][$lang]."/";
$content = array("common" => simplexml_load_file($path."_global.xml"), "specific" => simplexml_load_file($path.$settings["pages"][$page].".xml"));
?>
<!DOCTYPE html>
<html>
<head>
    <?php include "files/php/views/layout/meta.php"; ?>
</head>
<body class="numeric">

    <?php
    if(empty($_SESSION["characters_factory_admin"]) || $_SESSION["characters_factory_admin"] != "45hy(9oKjhG6y-098uJHGGht;l09iHjk") {
        echo "<form action='files/php/controllers/admin.php' method='post'>
                <input type='hidden' name='action' value='login' />
                <input type='hidden' name='p' />
              </form>
              <script>
                q = prompt('Password', '');
                if(q) {
                    document.forms[0].p.value = q;
                    document.forms[0].submit();
                }
                else window.location = 'about:blank';
              </script>";
    }
    else echo "
        REAL VISITORS: ".number_format((int)file_get_contents("files/inc/visitors.inc") - (int)$settings["fake_data"]["visitors"])."<br/>
        REAL CHARACTERS: ".number_format((int)file_get_contents("files/inc/characters.inc") - (int)$settings["fake_data"]["characters"])."<br/>
        REAL EXPORTS: ".number_format((int)file_get_contents("files/inc/exports.inc") - (int)$settings["fake_data"]["exports"])."<hr/>
    ";
    ?>

</body>
</html>
