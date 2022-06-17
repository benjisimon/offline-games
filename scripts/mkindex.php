<?php
/*
 * A PHP file for making an index page for our offline game
 * package
 */
require_once(__DIR__ . '/lib/loader.php');
define('SRCS_DIR', __DIR__ . '/../srcs');

$fn = function($carry, $f) {
  $fd = fopen($f, 'r');
  $title = basename($f);
  while($line = fgets($fd)) {
    if(preg_match('/^[#] (.*)/', $line, $matches)) {
      $title = $matches[1];
      break;
    }
  }
  $h = str_replace('.md', '.html', $f);

  $carry[] = [
    'uri' => str_replace(SRCS_DIR, 'games', $h),
    'path' => $h,
    'name' => $title
  ];
  return $carry;
};


$sources = files_walk(SRCS_DIR, $fn);
$body = snippet('index', ['games' => $sources]);

echo snippet('shell', [
  'title' => "Offline Games",
  'body' => $body
]);
