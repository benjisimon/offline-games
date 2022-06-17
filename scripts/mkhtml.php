<?php
/*
 * A PHP file for generating HTML from a .md file
 */
require_once(__DIR__ . '/lib/loader.php');
use Michelf\Markdown;

if($argc != 2) {
  die("Must provide a file to process");
}

$path = $argv[1];
if(!file_exists($path)) {
  die("Path doesn't exist: $path\n");
}

$md  = file_get_contents($path);
$html = Markdown::defaultTransform($md);

echo snippet('shell', ['body' => $html, 'title' => $path]);
