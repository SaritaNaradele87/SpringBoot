<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<title>Login here</title>

<style>
         #h1{
         color: white;
         text-align: center;
         font-style: italic;
         font-size: px;
         text-decoration: underline overline !important;
         text-shadow: 5px 5px purple;
         
         
         }
           pre{
             
              font-style: italic;
              border: 15px solid;
              border-left: 15px dotted;
              border-right: 15px dotted;
              border-color: white;
              width: 800px;
              height: 500px;
              text-align: center;
              margin-left: 200px;
              font-size: 30px;
              padding-top: 100px;
              background-image:url('image/lap.jpg');
              background-repeat: no-repeat;
              background-size: cover;
              background-attachment: fixed;
              color:white ;
              
              
          


           body{
           
                  background-color:lightblue;    
           
           }
 
</style>
</head>
<body>
<form action="login">
<h1 id="h1">LOGIN HERE</h1>
<pre>
User Name   : <input type="text" name="userName" placeholder="Enter Username">

Password    : <input type="password" name="password" placeholder="Enter Password">

<input type="submit" value="login">



</pre>
</form>
</body>
</html>