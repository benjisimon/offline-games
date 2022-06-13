<?php
/*
 * A PHP file for working with snippets, chunks of HTML
 */

function snippet($_template, $_args = []) {
  extract($_args);
  ob_start();
  require_once(__DIR__ . "/../snippets/$_template.php");
  return ob_get_clean();
}
