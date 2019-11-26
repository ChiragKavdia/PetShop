<?php
ini_set('display_startup_errors',1);
ini_set('display_errors',1);
error_reporting(-1);

session_start();
// session is not set
if (!isset($_SESSION["uid"])) {
header("location:index.php");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>PET SHOP</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
   
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
     integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" 
     crossorigin="anonymous">
</head>
<body>

<div class="navbar navbar-inverse navbar-fixed-top"> 
    <div class="container-fluid"> 
        <div class="navbar navbar-header"> 
            <a href="index.php" class="navbar-brand">PET SHOP</a>
        </div>
        <ul class="nav navbar-nav">
            <li> <a href="index.php"><i class="fas fa-home"></i>Home</a></li>
            <li> <a href="index.php"><i class="fas fa-store"></i>Product</a></li>
                   </ul>
<!-- cert -->
        <ul class="nav navbar-nav navbar-right">
            <li> <a href="c#" id ="cart_container" class="dropdown-toggle" data-toggle="dropdown"><i class="fas fa-cart-plus"></i>Cart <span class="badge">0</span></a>
            <div class="dropdown-menu" style="width:400px;">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-3">SL.NO</div>
                            <div class="col-md-3">product image</div>
                            <div class="col-md-3">produc name</div>
                            <div class="col-md-3"> prices in $</div>
                        </div>
                    </div>
                    <div class="panel-body">
                    <div id="cart_product"> 
                    <!--<div class="row">
                            <div class="col-md-3">SL.NO</div>
                            <div class="col-md-3">product image</div>
                            <div class="col-md-3">produc name</div>
                            <div class="col-md-3"> prices in $</div>
                        </div> -->
                        </div>
                    </div>
                    <div class="panel-footer"></div>
                </div>
            </div>
            </li>

            <li> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fas fa-sign-in-alt"></i><?php echo $_SESSION["name"]; ?></a>
            <!--signin dropdown -->
            <ul class="dropdown-menu">
                <li><a href="cart.php" style="text-decoration:none; color:blue;">Cart</a></li>
       
                <li class="divider"></li>
                <li><a href="changepass.php" style="text-decoration:none; color:blue;">Change password</a></li>   
                <li class="divider"></li>
                <li><a href="logout.php" style="text-decoration:none; color:blue;">Logout</a></li>
            </ul>
            </li>
           
        </ul>
    </div>
</div>

<p><br/></p>
	<p><br/></p>
	<p><br/></p>
<p><br/></p>
	<p><br/></p>
	<p><br/></p>
<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8" id="signup_msg">
				<!--Alert from signup form-->
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="panel panel-primary">
					<div class="panel-heading">Change Your Password</div>
					<div class="panel-body">
					
					<form id="pass_change" onsubmit="return false">
						<div class="row">
							<div class="col-md-12">
								<label>Old Password</label>
								<input type="text" id="oldpass" name="oldpass" class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="password">New Password</label>
								<input type="password" id="newpassword" name="newpassword"class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="repassword">Re-enter New Password</label>
								<input type="password" id="renpassword" name="renpassword"class="form-control">
							</div>
						</div>
						<p><br/></p>
						<div class="row">
							<div class="col-md-12">
								<input style="width:100%;" value="Change Pass" type="submit" id="passchange_button" name="passchange_button"class="btn btn-success btn-lg">
							</div>
						</div>
						
					</div>
					</form>
					<div class="panel-footer"></div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
	
	</body>
	</html>
















