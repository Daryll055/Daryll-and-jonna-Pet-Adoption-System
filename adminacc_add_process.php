<?php
session_start();

include('includes/dbconn.php');
 if (isset($_POST['save'])) {

		$name = $_POST['proprietor_name'];
		$phone = $_POST['phone'];
		$mail = $_POST['email'];
		$nusername = $_POST['nuname'];
		$npassword = $_POST['npword'];

								//image
    $filename2 = $_FILES["imageadd"]["name"];
    $tempname2 = $_FILES["imageadd"]["tmp_name"];
    $folder2 = "images/" . $filename2;

		
		if (empty($nusername) || empty($npassword))
				echo "Please fill all fields";
		else { 
		
			
			$sql=("INSERT INTO admininfo VALUES(NULL,'$name','$phone','$mail','$nusername','$npassword','$folder2')") or die(mysqli_error());
			$result=mysqli_query($con, $sql);

echo "<script>alert('Save Successfully!');
		window.location.href='adminacc_add.php';</script>";
			
		}
			
			}
		mysqli_close($con);
?>