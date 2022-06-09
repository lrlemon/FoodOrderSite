<?php
session_start();
?>





<?php
function Open()
{
	
	$servername="127.0.0.1";
	$username="root";
	$password="";
	$dbname="170204102";
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	/*if ($conn->connect_error) 
	{
		die("Connection failed: " . $conn->connect_error);
	}
	else
	{
		echo "Connected successfully";
	}*/
	return $conn;
}
function close($conn)
{
	$conn->close();
}


?>

<?php

$connect=Open();
?>

<?php


      $sql = "SELECT * FROM aboutus" ;
		
		$result =$connect ->query($sql);
		if ($result->num_rows > 0) 
		{
			
		
			while($row = $result->fetch_assoc()) 
			{
		
				
				$image=$row['image'];
				$description=$row['description'];
				
		        $imagee=$row['imagee'];
				$descriptionn=$row['descriptionn'];
				
		
              }}
?>














<html>

  <head>
    <title> AboutUs </title>
  </head>

  <link rel="stylesheet" type = "text/css" href ="css/aboutus.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>

  <body>

  
    <button onclick="topFunction()" id="myBtn" title="Go to top">
      <span class="glyphicon glyphicon-chevron-up"></span>
    </button>
  
    <script type="text/javascript">
      
    </script>

    <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Khudalagse*</a>
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
          <ul class="nav navbar-nav">
            <li><a href="index.php">Home</a></li>
            <li class="active"><a href="aboutus.php">About Us</a></li>
            <li><a href="contactus.php">Contact Us</a></li>
          </ul>

<?php
if(isset($_SESSION['login_user1'])){

?>


          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span ></span><?php echo $_SESSION['login_user1']; ?> </a></li>
            <li><a href="myrestaurant.php">ADMIN</a></li>
            <li><a href="logout_m.php"><span ></span> Log Out </a></li>
          </ul>
<?php
}
else if (isset($_SESSION['login_user2'])) {
  ?>
           <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span ></span> <?php echo $_SESSION['login_user2']; ?> </a></li>
            <li><a href="foodlist.php"><span ></span> All Food </a></li>
            <li><a href="cart.php"><span ></span> Cart 
            (<?php
              if(isset($_SESSION["cart"])){
              $count = count($_SESSION["cart"]); 
              echo "$count"; 
            }
              else
                echo "0";
              ?>)
            </a></li>
            <li><a href="logout_u.php"><span ></span> Log Out </a></li>
          </ul>
  <?php        
}
else {

  ?>

<ul class="nav navbar-nav navbar-right">
            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span ></span> Sign Up <span class="caret"></span> </a>
                <ul class="dropdown-menu">
              <li> <a href="customersignup.php"> User SignUp</a></li>
              <li> <a href="managersignup.php"> Admin SignUp</a></li>
          
            </ul>
            </li>

            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span ></span> Login <span class="caret"></span></a>
              <ul class="dropdown-menu">
              <li> <a href="customerlogin.php"> User Login</a></li>
              <li> <a href="managerlogin.php"> Admin Login</a></li>

            </ul>
            </li>
          </ul>

<?php
}
?>
        </div>

      </div>
    </nav>

<br><br>
<div class="container">
<center><h1 class="reg">About Us</h1><br><br><br>
<div class="row">


<div class="col-sm-6 profile text-center">
<div class="img-box">
<div class="img-responsive"><?php echo "<img src='images/$image'>"?></div>
<h4 class="des"><?php echo nl2br("<div class='desi'><br>$description</div>");?></h4>
</div>
</div>



<div class="col-sm-6 profile text-center">
<div class="img-box">
<div class="img-responsive"><?php echo "<img src='images/$imagee'>"?></div>
<h4 class="des"><?php echo nl2br("<div class='desi'><br>$descriptionn</div>");?></h4>
</div>
</div>






</div>
 
 
 
 </div>

















  
         </body>
</html>