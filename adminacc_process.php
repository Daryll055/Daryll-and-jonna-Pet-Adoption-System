<?php
session_start();

include('includes/dbconn.php');
if(isset($_POST['update'])){
		$username = $_SESSION['username'];
		$password = $_SESSION['password'];
		$id = $_SESSION['proprietor_id'];

		$name = $_POST['proprietor_name'];
		$phone = $_POST['phone'];
		$mail = $_POST['email'];
		$nusername = $_POST['nuname'];
		$npassword = $_POST['npword'];

				 //image
    $filename1 = $_FILES["imageup"]["name"];
    $tempname11 = $_FILES["imageup"]["tmp_name"];
    $folder1 = "images/" . $filename1;
	
		
		if (empty($nusername) || empty($npassword)){
				echo "Please fill all fields";
		}else { 
		
							$sql=("UPDATE admininfo SET name='$name', 
											 contact='$phone', 
											 email = '$mail',
											 username='$nusername',
											 password='$npassword',
											 profile='$folder1' WHERE id='$id'") or die(mysqli_error());
			$result=mysqli_query($con, $sql);

			if($result==true){
								
					echo "<script>alert('Save Successfully!');
						//window.location.href='adminacc.php';</script>";
					}
					else{
						echo '<script>alert("Sorry unable to process your request!");
								  window.location.href="adminacc.php"</script>';
						}


	
			
			}
		}
		
		mysqli_close($con);
?>