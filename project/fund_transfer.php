
<html>
<head>
<title>Fund Transfer</title>
<link rel="stylesheet" type="text/css" href="css/credit_customer_ac.css" /> 
<style>
#customer_profile .link4{

background-color: rgba(5, 21, 71,0.4);

}
    </style>
 </head>
<?php
	include 'header.php' ;
    include 'customer_profile_header.php' ;?>
    <div class="cust_credit_container">
	<form method="post">
    <input class="customer" type="text" name="customer_account_no" placeholder="Enter A/c No" required><br>
    <input class="customer" type="text" name="credit_amount" placeholder="Amount" required><br>
    <input class="customer" type="submit" name="credit_btn" value="Credit" >
    </form><br>
</div>
<?php include'footer.php'; ?>
</body>
</html>


<?php 
if(isset($_POST['credit_btn'])){

    $cust_ac_no = $_POST['customer_account_no'];
    $credit_amount = $_POST['credit_amount'];

	if(!is_numeric($_POST['credit_amount'])){

		echo '<script>alert("Invalid amount")</script>';
	}
	
	else{ 
    
	include 'db_connect.php';

	//Customer details required for transaction
	$sql = "SELECT * FROM bank_customers WHERE Account_no = $cust_ac_no ";
    $result = $conn->query($sql);
    if($result->num_rows > 0){
    $row = $result->fetch_assoc();
	$customer_ac_no = $row['Account_no'];
	$customer_id = $row['Customer_ID'];
	$customer_name = $row['Username'];
	$customer_ifsc= $row['IFSC_Code'];
	$customer_mob = $row['Mobile_no'];
	$customer_netbal = $row['Current_Balance'] + $credit_amount;
	$customer_passbk = "statement_".$customer_id;
	

    
    	//Generate Transaction ID
		$transaction_id = mt_rand(100,999).mt_rand(1000,9999).mt_rand(10,99);
		
		//Transaction Date

		date_default_timezone_set('Asia/Karachi'); 
		$transaction_date = date("d/m/y h:i:s A");
		
		//Remark or Narration
		$remark = "Cash Deposit";
			
		//customer's Transaction Description
        $Transac_description = "Cash Deposit/".$transaction_id;
		
		date_default_timezone_set('Asia/Karachi'); 
		$date_time = date("d/m/y h:i:s A");

		

        // Set autocommit to off
        $conn->autocommit(FALSE);
	
	//Add amount to customer's available balance	
	$sql1 = "Update bank_customers SET Current_Balance = '$customer_netbal' WHERE bank_customers.Account_no = '$customer_ac_no '";
		
	// Insert Statement into customer Passbook
	$sql2 = "INSERT INTO $customer_passbk (Transaction_id,Transaction_date,Description,Cr_amount,Dr_amount,Net_Balance,Remark)
	VALUES ('$transaction_id','$transaction_date','$Transac_description','$credit_amount','0','$customer_netbal','$remark')";
		
  
	if($conn->query($sql1) == TRUE && $conn->query($sql2) == TRUE ){
				
			$conn->commit();
		


	
			echo '<script>alert("Amount credited Successfully to customer account")</script>';
							
		}	


		else{
			
			
			echo '<script>alert("Transaction failed\n\nReason:\n\n'.$conn->error.'")</script>';
			$conn->rollback();
		
			
        }
    }

    else{

        echo '<script>alert("Incorrect Account Number")</script>';
    }

	}
	

			
	}
	
?>