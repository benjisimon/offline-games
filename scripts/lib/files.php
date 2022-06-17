<?php
/*
 * A PHP file for working with files and directories
 */

/*
 * Recursively walk all files under a directory
 */
function files_walk($root, $fn, $init = false) {
  $carry = $init;
  $dh = opendir($root);
  $skip = ['.', '..'];

  while($f = readdir($dh)) {
    if(in_array($f, $skip)) {
      continue;
    }

    $path = "$root/$f";
    if(is_dir($path)) {
      $carry = files_walk($path, $fn, $carry);;
    } else {
      $carry = $fn($carry, "$root/$f");
    }
  }

  return $carry;
}
