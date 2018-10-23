<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script>
function validateForm() {
    var w = document.forms["edit-players"]["team"].value;
    var x = document.forms["edit-players"]["name"].value;
    var y = document.forms["edit-players"]["owner"].value;
    if (w == "") {
        alert("Team must be filled out");
        return false;
    }
    else if (x == "") {
        alert("Name must be filled out");
        return false;
    }
    else if (y == "") {
        alert("Owner must be filled out");
        return false;
    }
} 
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Player</title>
</head>
<body>
<form name="edit-players" action = "editPlayersServlet" method="post" onsubmit="return validateForm()">
Team: <input type ="text" name = "team" value= "${playerToEdit.team}">
Name: <input type = "text" name = "name" value= "${playerToEdit.name}">
Owner: <input type = "text" name = "owner" value= "${playerToEdit.owner}">
<input type = "hidden" name = "id" value = "${playerToEdit.id}">
<input type = "submit" value="Save Edited Player">
</form>
<a href = "viewAllPlayersServlet">View complete list</a><br />
<a href = "index.html">Back to main menu</a><br />
</body>
</html>