<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<Script>
function log(){
	var username = document.Reg.username.value;
	var password = document.Reg.password.value;
	var UserNameRegEx =/^[a-zA-Z]*$/;
    var PassWordRegEx =/^[a-zA-Z0-9]*$/;
    if(username == ""){
        alert("pls enter the name ");
        return false;
        }
    if(password == ""){
        alert("pls enter the password");
        return false;
        }
    if (! username.match(UserNameRegEx)){
        alert("Invalid username Format ");
        return false;
        }
        if (! password.match(PassWordRegEx)){
        alert("Invalid password Format");
        return false;
        }  
}
</Script>
</head>
<style>
body {
background-image: url("https://img.freepik.com/free-photo/pastel-blue-vignette-concrete-textured-background_53876-102637.jpg?w=996&t=st=1657191080~exp=1657191680~hmac=229420e570f811f43cc47ef5b87f68e3497156f7096c92a904c0148fe78059ed");
}
</style>
<body>
<center>
<form action="WelcomePage" name = "Reg">
<table>
<tr>
<td ><font color="white">User Name</font>
</td><td><input type="text" name="username"/></td></tr>
<tr><td ><font color="white">password </font></td>
<td> <input type="text" name="password"/></td></tr>

</table>
<input type="submit" value="login" onclick="log()"/>
</form>

<form action="RegPage">
<table>
<tr><td align="center"><button ><a href="RegPage">Sign Up</a></button></td></tr>
</table>

</form>
${msg}
</center>

</body>
</html>
 
