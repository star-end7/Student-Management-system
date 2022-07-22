<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<Script>
function login(){
    var id = document.Reg.id.value;
    var username = document.Reg.username.value;
    var mail = document.Reg.mail.value;
    var age = document.Reg.age.value;
    var contact = document.Reg.contact.value;
    var department = document.Reg.department.value;
    var address = document.Reg.address.value;
    var password = document.Reg.password.value;
    var UserNameRegEx =/^[a-zA-Z]*$/;
    var PassWordRegEx =/^[a-zA-Z0-9]*$/;
    if(id == ""){
        alert("pls enter the Id");
        return false;
        }
    if(username == ""){
        alert("pls enter the name ");
        return false;
        }
    if(mail == ""){
        alert("pls enter the mail");
        return false;
        }
    if(age == ""){
        alert("pls enter the age");
        return false;
        }
    if(contact == ""){
        alert("pls enter the contact");
        return false;
        }
    if(department == ""){
        alert("pls enter the department");
        return false;
        }
    if(address == ""){
        alert("pls enter the address");
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
<br>
<center>
<form action="Register" name ="Reg" >
<table>
<tr><td>Student Id </td><td><input type="text" name="id"/></td></tr>
<tr><td>Student Name </td><td><input type="text" name="username"/></td></tr>
<tr><td>Student Mail id </td><td><input type="text" name="mail"/></td></tr>
<tr><td>Student Age </td><td><input type="text" name="age"/></td></tr>
<tr><td>Student Contact </td><td><input type="text" name="contact"/></td></tr>
<tr><td>Student Department </td><td><input type="text" name="department"/></td></tr>
<tr><td>Student Address </td><td><input type="text" name="address"/></td></tr>
<tr><td>Create New Password </td><td><input type="text" name="password"/></td></tr>



</table>

<input type="submit" value="submit" onclick="login()"/>
</form>

<br><br>
<font color=green><b>${msg }</b></font>
</center>
</body>
</html>

