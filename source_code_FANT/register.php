
<?php
	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\Exception;

	include 'includes/session.php';
	include 'includes/scripts.php';

	if(isset($_POST['signup'])){
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$email = $_POST['email'];
		$password = $_POST['password'];
		$repassword = $_POST['repassword'];

		$_SESSION['firstname'] = $firstname;
		$_SESSION['lastname'] = $lastname;
		$_SESSION['email'] = $email;


		if($password != $repassword){
			$_SESSION['error'] = 'Passwords did not match';
			header('location: signup.php');
		}
		else{
			$conn = $pdo->open();
			$set='123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
			$code=substr(str_shuffle($set), 0, 12);
			$password = password_hash($password, PASSWORD_DEFAULT);

			$stmt = $conn->prepare("INSERT INTO users (email, password, firstname, lastname, activate_code) VALUES (:email, :password, :firstname, :lastname, :code)");
			$stmt->execute(['email'=>$email, 'password'=>$password, 'firstname'=>$firstname, 'lastname'=>$lastname, 'code'=>$code]);				
			$userid = $conn->lastInsertId();
			$stmt = $conn->prepare("UPDATE users SET status=:status WHERE email=:email");
			$stmt->execute(['status'=>1, 'email'=>$email]);
			echo "<script>
	window.setTimeout(function(){
	// Move to a new location or you can do something else
	window.location.href = 'index.php';
	}, 5000);
	</script>
	";
	$msg="Anda telah berhasil mendaftar, akan dialihkan ke halaman login.";
	
			
								
	}
	

	}
	else{
		$_SESSION['error'] = 'Fill up signup form first';
		header('location: signup.php');
	}
?>	

<form class="form-login" method="post" style="margin-top:5px;">
		        <h2 class="form-login-heading">User Registration</h2>
		        <p style="padding-left: 1%; color: green">
		        	<?php if($msg){
echo "<br>";
echo htmlentities($msg);
		    
		        		}
?>