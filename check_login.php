<?php
	session_start();
	include("connect.php");

    
    $strSQL = ("SELECT * FROM user WHERE username = '".mysqli_real_escape_string($conn,$_POST['txt_username'])."'
     and password = '".mysqli_real_escape_string($conn,$_POST['txt_password'])."' ");

    $objQuery = mysqli_query($conn , $strSQL);
    $objResult = mysqli_fetch_array($objQuery ,MYSQLI_ASSOC);

	if(!$objResult)
	{
			echo "Username and Password Incorrect!";
	}
	else
	{
			$_SESSION["user_id"] = $objResult["id"];

			session_write_close();
			
				header("location:user.php?loginsuccessfully");
	}

?>
