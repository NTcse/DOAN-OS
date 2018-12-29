<?php
if(!isset($_GET['submit'])) exit;
$tukhoa=$_GET['kseach'];
if($tukhoa==''){echo "Vui lòng nhập từ khóa"; exit;}
$obj = new PDO("mysql:host=". HOST."; dbname=". DB , USER, PASS);
$obj->query("set names 'utf8' ");
$sql="select * from sanpham where ten_sp like '%$tukhoa%'";
$data=$obj->query($sql);
$rows = $data->fetchAll();
if($data->rowCount()==0)
echo "Không có sản phẩm $tukhoa bạn cần tìm";
foreach($rows as $r)
       {
        ?>
        <div class="sp">
          <p style="color: red; font-weight: bold; font-size: 100%"><?php echo $r['ten_sp'];?><br></p>
          <p ><img src="sanpham/<?php echo $r['madanhmuc']; ?>/<?php echo $r['hinh']; ?>" height="138px" width="140px" ></p>
          <p style="font-weight: bold;"  >Giá: <?php echo number_format($r['gia']).'đ';?></p>
          <p>
            <a href="chitietsp.php?ma_sp=<?php echo $r['ma_sp']?>"><input type="button" name="chitiet" value="Chi tiết"></a>
            <a href="updategiohang.php?ma_sp=<?php echo $r['ma_sp']?>"><input type="button" name="mua" value="Mua"></a>
          </p>
        </div>
        <?php 
      }
 ?>
