<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>contact us</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
body {
	background-size : cover;
  background-image: url('https://img.freepik.com/free-photo/abstract-blur-beautiful-luxury-shopping-mall-center_1339-4083.jpg?w=740&t=st=1687034459~exp=1687035059~hmac=ddf0f3aafa6eee59017805e76cc6d3605548cf870dd2760fc517bbda352527ba');
}
</style>
<body>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light ">
  <a class="navbar-brand" href="#" style="font-size:30px; font-weight:bold;">Library Management System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    
  
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="nav navbar-nav navbar-right ml-auto">
     
      <a class="nav-item nav-link" href="index.html">HOME</a>
      <a class="nav-item nav-link " href="register.jsp">Register</a>
         <a class="nav-item nav-link " href="login.jsp">Login</a>
            <a class="nav-item nav-link " href="contact.jsp">Contact Us</a>  
    </div>
  </div>
</nav>

<form>
<h2 style="text-align:center">
			Contact Us
		</h2>
<div align="center">
  <div class="form-group col-md-6" \>
      <label for="cname">Name</label>
      <input type="text" class="form-control" id="name" placeholder="name">
    </div>
  <div class="form-group col-md-6">
      <label for="subject">Subject</label>
      <input type="text" class="form-control" id="subject" placeholder="subject">
    </div>
 
  
  <div class="form-group  col-md-6">
    <label for="exampleFormControlTextarea1">FeedBack</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
  </div>
  
  <div>
  <input type="submit" class="btn btn-block btn-success wt-100 mt-20"
  value="CLICK TO SUBMIT" name="btnSubmit">
  </div>
 </div>
</form>
</body>
</html>