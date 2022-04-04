

<html>
    <head><title>My Account</title>
    
    <link rel="stylesheet" type="text/css" href="css/customer_profile_myacc.css" />
 <style>
#customer_profile .link1{

background-color: rgba(5, 21, 71,0.4);

}
    </style>
      <?php include 'header.php' ; ?></head>
<body>
	<?php include 'customer_profile_header.php' ?>
	
<?php 

if($_SESSION['customer_login'] == true)
{
	
	

}	

	else{
   
    header('location:customer_login.php');
    }

	

?>
    
    <?php 
        $cust_id= $_SESSION['customer_Id'];
        include 'db_connect.php'; 
        $sql="SELECT * FROM bank_customers where Customer_ID= '$cust_id' ";
		$result = $conn->query($sql);
        $row = $result->fetch_assoc();
        $current_bal = $row['Current_Balance'];
    
		

?>


	<div class="cust_myacc_container">
	
            <br><br>
            <div class="accdet">
                <span class="heading">Account Details</span><br>
                <label>Customer Id : <?php echo $_SESSION['customer_Id']; ?></label>
                <label>Account Number : <?php echo $_SESSION['Account_No']; ?></label>
                 <label>Account Name : <?php echo $_SESSION['Username']; ?></label>
                <label>Account Type : <?php echo $_SESSION['Account_type']; ?></label>
                <label>Branch : <?php echo $_SESSION['Branch']; ?></label>
                <label>Available Balance :$<?php echo $current_bal; ?></label>
                <label>Mobile No : <?php echo $_SESSION['Mobile_no']; ?></label>
				<label>Email Id : <?php echo $_SESSION['Email_ID']; ?></label><br><br><br><br>
				
            </div>
            
	
        <br>
    </div>

    </body>
    <?php include 'footer.php' ; ?>
</html>