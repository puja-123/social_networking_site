<!DOCTYPE html>
<html>
  <head>
  	  <title>Signin</title>
  	  <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet'>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  </head>
  <style>
     body{
     	overflow-x: hidden;
     }
         h1 {
         color: white;
  text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
}
     .main-content{
     	width: 50%;
     	height: 40%;
     	margin: 10px auto;
     	background-color: #5353c6;
     	border: 2px solid #e6e6e6;
     	padding: 40px 50px;
     }
     .header{
     	border: 0px solid #000;
     	margin-bottom: 5px;
     }
     .well{
		background-color: #187FAB;
	}
	#signin{
		width:60%;
		border-radius: 30px;
	}
	.overlap-text a{
		position: absolute;
		top:8px;
		right:10px;
		font-size : 14px;
		text-decoration: none;
		font-family: 'Overpass Mono',monospace;
		letter-spacing: -1px;
	}
	 .well{
     background-color: #5353c6;
     font-family: 'Sofia';font-size: 22px;
    }
   
  </style>
  <body>
  	 <div class="row">
		<div class="col-sm-12">
			<div class="well">
				<center><h1 style="color:white;">Login Page</h1></center>
			</div>
		</div>
	</div>
    <div class = "row">
    	<div class="col-sm-12">
          <div class="main-content">
          	  <div class="header">
          	 <center><img src="images/chaticon.png" class="img-rounded" width="100px" height="80px"></center><br>
          	  </div>
          	  <div class="l-part">
          	  	 <form action="" method="post">
          	  	 	<input type="email" name="email" placeholder="Email" required="required" class="form-control input-md"><br>
          	  	 	<div class="overlap-text">
          	  	 		<input type="password" name="pass" placeholder="Password" required="required" class="form-control input-md"><br>
          	  	    </div>
                    <a style="text-decoration:none; float: right;color:white;" data-toggle="tooltip" title="Reset password" href="forgot_password.php">Forget?</a><br>
          	  	        <a style="text-decoration:none; float: right;color:white;" data-toggle="tooltip" title="Signin" href="signup.php">Don't have an account?</a><br><br>
          	  	        <center><button id="signin" class="btn btn-info btn-lg" name="login">Login</button></center>
          	  	        <?php include("login.php"); ?>
          	  	 </form>
          	  </div>
          </div>
    	</div>
    </div>
  </body>
</html>