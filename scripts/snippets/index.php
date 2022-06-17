<?php
/*
 * A PHP file for generating our index
 */
?>
<ul>
  <?php foreach($games as $g) { ?>
    <li>
      <a href='<?= $g['uri'] ?>'><?= $g['name'] ?></a>
    </li>
  <?php } ?>
</ul>
