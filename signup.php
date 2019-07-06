<!DOCTYPE html>
<html>
<head>
    <title>signup</title>
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
    
	#signup{
		width:60%;
		border-radius: 30px;
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
				<center><h1 style="color:white;">Sign Up Page</h1></center>
			</div>
		</div>
	</div>
	  <div class="row">
		<div class="col-sm-12">
			<div class="main-content">
				<div class="header">
					<center><img src="images/chaticon.png" class="img-rounded" width="100px" height="80px"></center><br>
          <p style="color : white; text-align: center;">Sign up to see photos and messages from your friends.</p><hr>
				</div>
				<div class="l-part">
					<form action="" method="post">
                       <div class="input-group">
                       	 <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                       	 <input type="text" class="form-control" placeholder="First Name" name="first_name" required="required">
                       </div><br>
                      <div class="input-group">
                       	 <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                       	 <input type="text" class="form-control" placeholder="Last Name" name="last_name" required="required">
                       </div><br> 
                       <div class="input-group">
                       	 <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                       	 <input id="password" type="password" class="form-control" placeholder="Password" name="u_pass" required="required">
                       </div><br>
                       <div class="input-group">
                       	 <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                       	 <input id="email" type="email" class="form-control" placeholder="Email" name="u_email" required="required">
                       	</div><br>
                       <div class="input-group">
                       	 <span class="input-group-addon"><i class="glyphicon glyphicon-chevron-down"></i></span>
                       	 <select class="form-control" name="u_country" required="required">
                       	 	<option disabled>Select your Country</option>
                       	 	<option>India</option>
                       	 	<option>USA</option>
                       	 	<option>UK</option>
                       	 	<option>Japan</option>
                       	 	<option>Pakistan</option>
                       	 	<option>France</option>
                       	 	<option>Germany</option>
                       	 </select>
                       </div><br>
                        <div class="input-group">
                       	 <span class="input-group-addon"><i class="glyphicon glyphicon-chevron-down"></i></span>
                       	 <select class="form-control input-md" name="u_gender" required="required">
                       	 	<option disabled>Select your Gender</option>
                       	 	<option>Female</option>
                       	 	<option>Male</option>
                       	 </select>
                       	</div><br>
                       <div class="input-group">
                       	 <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                       	 <input type="date" class="form-control input-md" placeholder="birthday" name="u_birthday" required="required">
                       	</div><br>
                       	<a style="text-decoration: none; float: right;color : white;" data-toggle="tooltip" title="Signin" href="signin.php">Already have an account?</a><br><br>
                       <center><button id="signup" class="btn btn-info btn-lg" name="sign_up">Signup</button></center>
                      <?php include("insert_user.php"); ?>
                    </form>
                </div>
			</div>
		</div>
	   </div>
   </body>
</html>