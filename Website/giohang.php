﻿  <?php
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