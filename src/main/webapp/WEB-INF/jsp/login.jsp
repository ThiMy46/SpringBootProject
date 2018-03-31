<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>Login</title>
   <link href="static/css/demo.css" rel="stylesheet" type="text/css"/> 
</head>
<body >
	<div>
	  
	  <form action="checkLogin" method="POST">
	  	<h1>LOGIN </h1>
	  	<p style="color:red; font-size:16px; text-align:center;">${error}</p>
	  	<input placeholder="Username" type="text" name="accountname" required/>
	  	<input placeholder="Password" type="password" name="password" required/>
	  	<button type="submit">Login</button>
	  </form>
	</div>
</body>
</html>