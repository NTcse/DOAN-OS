  <?php
  include "config.php";
  if (!isset($_SESSION)) session_start();
  ?>
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml">
  <head>
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
      </div>
      <div>
        <div>
          <table border="1" width="1119px" height="auto"; style="border-color: blue">
            <tr style="text-align: center;font-weight: bold;">
              <td>STT</td>
              <td>Tên sản phẩm</td>
              <td></td>
              <td>Giá</td>
              <td>SL</td>
              <td>Thành tiền</td>
              <td>Thao tác</td>
            </tr>
            <?php
            $tong=0;
            $run=1;
            foreach ($_SESSION['giohang'] as $key => $value) 
            { 
              $sql ="select * from sanpham where ma_sp= '$key' ";
              $obj = new PDO("mysql:host=". HOST."; dbname=". DB , USER, PASS);
              $obj->query("set names 'utf8' ");
              $data =$obj->query($sql);
              $r = $data->fetch();
                          //print_r($r); exit;
              ?>
              <tr>
                <td><?php echo $run; $run+=1;?></td>
                <td><?php echo $r['ten_sp'];?></td>
                <td>
                  <img src="sanpham/<?php echo $r['madanhmuc']; ?>/<?php echo $r['hinh'];?>" height=150>
                </td>
                <td><?php echo number_format($r['gia']).'đ';?></td>
                <td><?php echo $value;?></td>
                <td><?php echo number_format($r['gia']*$value).'đ'; $tong+=$r['gia']*$value;?></td>
                <td>
                  <a href="xoagiohang.php?ma_sp=<?php echo $key; ?>"><input type="button" name="xoa" value="Xóa"></a>
                </td>
              </tr>
              <?php

            }
            ?>
			<tr style="text-align: center;font-weight: bold;">
              <td colspan="5" >Tổng tiền thanh toán: </td>
              <td style="color: red;" ><?php echo number_format($tong).'đ'; ?></td>
              <td> <a href="thongtinkhachhang.php"><input type="button" name="tt" value="Thanh Toán"></td>
            </tr>
          </table><br>
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