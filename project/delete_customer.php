<html>
</head><title>Delete Customer</title>
<link rel="stylesheet" type="text/css" href="css/delete_customer.css">
</head>
<body>
    <?php include 'header.php';  ?>
    
	<?php 
session_start();
if($_SESSION['staff_login'] != true)
{
	
	 header('location:staff_login.php');

}	

?>

<html>
    <head>
    
    <link rel="stylesheet" type="text/css" href="css/staff_profile_header.css" />
	
	</head>
    
<body>
    		
			
	<?php	
		include 'db_connect.php';
        
        $staff_id = $_SESSION['staff_id'];
		$sql="SELECT * FROM bank_staff WHERE Staff_id= '$staff_id' ";
        $result=$conn->query($sql);
        if($result->num_rows > 0)
		$row = $result->fetch_assoc();

	?>
       <div class="head">
            
            <div class="customer_details">
			
			
			<img src="" onerror="this.src='img/customers/No_image.jpg'"  height="115px" width="105px"/>
			</div>
             <div class="welcome">

             <label>Welcome <?php echo $_SESSION['staff_name']; ?></label><h6 class="lstlogin">Last login : <?php echo $row['Last_login']  ; ?> </h6>
                  </div>
            <a class="staff_home" href="staff_profile.php"><input type="button" name="home" value="Home"></a>
            <a class="staff_logout" href="staff_logout.php"><input type="button" name="logout_btn" value="Logout"></a>
        
        </div>
        <br>
			

    </body>
</html>
	
    <div class ="delete_customer_container">
    <div class ="delete_customer_container_heading">
    <h3>Delete Customer</h3>
    </div>
        <form method="POST">
            <input type="text" name="Cust_ac_no" placeholder="Customer Account No" required><br>
            <input type="text" name="Cust_ac_Id" placeholder="Customer ID" required ><br>
            <input type="text" name="reason" placeholder="Reason" required><br>
            <input type="submit" name="delete" value="Delete">
            </form>
        </div>




<?php include 'footer.php'; ?>
</body>
</html>


<?php

if(isset($_POST['delete'])){
$acc_no = $_POST['Cust_ac_no'];
$cust_id = $_POST['Cust_ac_Id'];
$reason= $_POST['reason'];

    include 'db_connect.php';

$sql = "SELECT Account_no, Customer_ID FROM bank_Customers WHERE Account_no='$acc_no'";
$result = $conn->query($sql);
if($result->num_rows > 0){

    
    $row = $result->fetch_assoc();

    if($row['Account_no'] != $acc_no && $row['Customer_ID'] != $cust_id){

        echo '<script>alert("Incorrect Details")</script>';
    }

        elseif($row['Customer_ID'] != $cust_id){

            echo '<script>alert("Incorrect Customer ID")</script>';
        }

        else{
    
    echo $row['Customer_ID']."<br>".$row['Account_no']."<br>".$reason;

    $conn->autocommit(FALSE);

    $sql1 = "DROP TABLE passbook_$cust_id, beneficiary_$cust_id";
    $sql2 = "DELETE FROM bank_customers WHERE  Account_no='$acc_no'";

    if( ($conn->query($sql1)  && $conn->query($sql2)) == TRUE ){

        $conn->commit();
        echo '<script>alert("Customer Deleted Successfully")
			location="delete_customer.php"</script>';
        
    }
    else{

        $conn->rollback();
        echo '<script>alert("Customer not deleted")
        location="delete_customer.php"</script>';
        
    }

}

   
}
else{

    echo '<script>alert("Incorrect Account Number")</script>';

}

}

?>