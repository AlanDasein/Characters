<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Logo and responsive toggle -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="logo" href="?l=<?= $lang; ?>&p=0">
                <img src="files/assets/logo.png?v=<?= $time; ?>" />
                <span><?= $content["common"]->title; ?></span>
            </a>
        </div>
        <!-- Navbar links -->
        <div class="collapse navbar-collapse" id="navbar">
            <ul class="nav navbar-nav navbar-right">
                <?= Helper::getItems($content["common"]->menu->item, array($lang, $page)); ?>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <?= $content["common"]->text->item[0]; ?> <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="about-us">
                        <?= Helper::getItems($content["common"]->languages->item, array($page, $settings["langs"]), "SELECTOR"); ?>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>