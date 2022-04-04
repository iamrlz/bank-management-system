<?php ob_start(); ?>

<html>
<head><title>Staff Home</title>
<link rel="stylesheet" type="text/css" href="css/staff_profile.css" />
</head>
<body>
<?php
	include 'header.php' ;
	include 'staff_profile_header.php' ;?>
	<form method="post">
<div class="staff_options">
		       	<input type="submit" name="viewdet" value="View Customers"/>
				<input type="submit" name="del_cust" value="Delete Customer A/c"/>	
				<input type="submit" name="credit_cust_ac" value="Credit Customer"/>	
			</div>
	</form>


<?php include'footer.php'; ?>
</body>
</html>


<?php

if(isset($_POST['viewdet'])){
	
	
		header('location:active_customers.php');
}


if(isset($_POST['del_cust'])){
	
	
	header('location:delete_customer.php');
}
if(isset($_POST['credit_cust_ac'])){
	
	
	header('location:credit_customer_ac.php');
}

?>
