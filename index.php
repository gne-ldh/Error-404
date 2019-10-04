<?php
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Hackathon 2K19</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
</head>

<body>
<?php
include("header.php");
include("database.php");
extract($_POST);

if(isset($submit))
{
	$rs=mysqli_query($con,"select * from mst_user where login='$loginid' and pass='$pass'");
	if(mysqli_num_rows($rs)<1)
	{
		$found="N";
	}
	else
	{
		$_SESSION[login]=$loginid;
	}
}
if (isset($_SESSION[login]))
{
echo "<h1 class='text-center bg-danger'>INSTRUCTIONS</h1>
<ol>11This is a M.C.Q type test.It contains three subjects based on the languages used while making this quiz.<br>

2.There will be NO time limit for the quiz.<br>

3.NO negative marking is there.<br>

4.Answering all the  questions is compulsory.<br>

Best of Luck.......!!!<br>";
		echo '<table width="28%"  border="0" align="center">
		
  <tr>
    <td width="7%" height="65" valign="bottom"></td>
    <td width="93%" valign="bottom" bordercolor="#0000FF"> <a href="showtest.php?subid=1" class="style4">Start Your Attempt</a></td>
  </tr>
</table>';
   
		exit;
		

}


?>
<table width="100%" border="0">
  
  <tr>
    <td height="296" valign="top"><div align="center">
        <h1 class="style8"><marquee>Team Error 404</marquee></h1>
      <span class="style5"></span>        </span>
        <param name="movie" value="english theams two brothers.dat">
        <param name="quality" value="high">
        <param name="movie" value="Drag to a file to choose it.">
        <param name="quality" value="high">
        <param name="BGCOLOR" value="#FFFFFF">
<p align="left" class="style5">&nbsp;</p>
      <blockquote>
          <p align="centre" class="style5"><span class="style7">Welcome to Computer Based Examination created by team Error 404 by using  MySql,HTML,PHP,JAVASCRIPT</span></p>
      </blockquote>
    </div></td>
    		<table align="center" border="0" WIDTH="50%" height="250">
			<h1 class="text-center bg-warning">LOGIN PAGE</h1>
		<form method="post" action="">
		<center>
		<img class="img-circle" src="1.jpg"  title="this is my profile pic" width="240px" height="190px" border="1" />
		</center>	<br>
	
				<tr>
					<th class="text-primary">LOGIN ID</th>
					<th>
					<input class="form-control"type="TEXT" title="enter your regitered LOGIN ID"  placeholder="LOGIN ID"  maxlength="10" size="25"  id="loginid2" name="loginid"/></tD>
				</th>
				<tr>
					<th class="text-primary">ENTER PASSWORD</th>
					<th><input class="form-control" type="password"  placeholder="ENTER PASSWORD" name="pass" id="pass2"/></th>
					</tr>
					       <?php
		  if(isset($found))
		  {
		  	echo "Invalid Username or Password";
		  }
		  ?>
          </span></td>
         <th></th>
				<th class="errors">
					<input class="btn btn-danger "type="submit" name="submit" id="submit" Value="Login"/>
				
        <a class="btn btn-success " href="signup.php">Click here to Register</a></th>
      </table>
      <div align="center">
        <p class="style5"><img src="images/topleft.jpg" width="134" height="128">          </p>
        </div>
    </form></td>
  </tr>
</table>

</body>
</html>
