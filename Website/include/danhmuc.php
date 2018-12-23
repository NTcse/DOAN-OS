<pre
<?php
$obj =new PDO("mysql:host". HOST."; dbname".DB,USER,PASS);
$obj->query("set names 'utf8'");
$sql="select * from danhmucsp";
$obj = new PDO("mysql:host=". HOST."; dbname=". DB , USER, PASS);
$obj->query("set names 'utf8' ");
$data = $obj->query($sql);
$rows = $data->fetchAll();
?>
<div id="divdm" style=" width: 100%;">
<p style="font-weight: bold;font-size: 180%;">Danh Mục Sản Phẩm</p> 
  <?php  
  foreach($rows as $r)
    {
  ?>
      <p style="font-weight: bold;font-size: 150%;"><a href="sanpham.php?madanhmuc=<?php echo $r['madanhmuc'];?>"><?php echo $r['tendanhmuc'];?></a>
        </p>
      <?php
    }
    ?>
</div>