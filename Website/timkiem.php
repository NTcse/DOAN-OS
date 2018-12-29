<?php
include "config.php";
?>
<!DOCTYPE html>
<html>
<head>
	<title>Tìm Kiếm - PCCC</title>
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
			<div id="dmsp">
				<?php 
			include ROOT."/include/danhmuc.php";
			?>
			</div>
			<div id="conten">
				<div id="timkiem">
					<form action="timkiem.php" method="get" accept-charset="utf-8">
						<input type="search" width="200px" name="kseach" placeholder="Tên sản phẩm">
						<input type="submit" name="submit" value="Tìm Kiếm Sản Phẩm">
					</form>
				</div>
				<div id="kqtimsp">
					<?php 
						include ROOT."/include/timsp.php";
					?>
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