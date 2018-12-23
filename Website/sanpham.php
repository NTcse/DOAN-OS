<?php
include "config.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <?php
  include ROOT."/include/head.php";
  ?>
  <?php
  $id = $_GET['madanhmuc'];
  $sql="select * from danhmucsp where madanhmuc='$id' ";
  $obj = new PDO("mysql:host=". HOST."; dbname=". DB , USER, PASS);
  $obj->query("set names 'utf8' ");
  $data = $obj->query($sql);
  $rows = $data->fetchAll();
           //print_r($rows); exit;
  foreach($rows as $r)
  {
    ?>
    <title>Danh mục <?php echo $r['tendanhmuc'];   ?> - PCCC</title>
    <?php
  }
  ?>
</head>
<body>
  <div>
    <div id="header">
      <?php 
      include ROOT."/include/header.php";
      ?>
    </div>
    <div id="container">
      <div id="dmsp" >
        <?php 
        include ROOT."/include/danhmuc.php";
        ?>
      </div>
      <div id="conten">
       

    </div>
  </div>
  <div id="footer">
    <?php 
    include ROOT."/include/footer.php";
    ?>
  </div>
</div>
</body> 
</html>