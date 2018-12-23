<?php
session_start();
include("config.php");

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Home - PCCC</title>
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