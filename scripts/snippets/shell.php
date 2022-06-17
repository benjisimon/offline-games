<?php
/*
 * A PHP file for rendering our pages
 */
?>
<!DOCTYPE html>
<html>
  <head>
    <title><?= $title ?></title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width" />
  </head>
  <body>
    <?= snippet('styles'); ?>
    <?= snippet('back_button'); ?>
    <?= $body ?>
  </body>
</html>
