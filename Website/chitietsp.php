<?php
include "config.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <?php
  $id = $_GET['ma_sp'];
  $sql="select * from sanpham where ma_sp='$id' ";
  $obj = new PDO("mysql:host=". HOST."; dbname=". DB , USER, PASS);
  $obj->query("set names 'utf8' ");
  $data = $obj->query($sql);
  $rows = $data->fetchAll();
           //print_r($rows); exit;
  foreach($rows as $r)
  {
    ?>
    <title>Sản phẩm <?php echo $r['ten_sp'];   ?> - PCCC</title>
    <?php
  }
  ?>
  <?php
  include ROOT."/include/head.php";
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
      <?php 
      include ROOT."/include/danhmuc.php";
      ?>
      <div>
        
      </div>
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