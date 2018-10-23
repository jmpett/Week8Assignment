<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Football List</title>
</head>
<body>
<form action = "editFootballListServlet" method="post">
<table>
<c:forEach items="${requestScope.allPlayers}" var="currentplayer">
<tr>
   <td><input type="radio" name="id" value="${currentplayer.id}"></td>
   <td>${currentplayer.team}</td>
   <td>${currentplayer.name}</td>
   <td>${currentplayer.owner}</td>
</tr>
</c:forEach>
</table>
<input type = "submit" value = "Edit Selected Player" name="doThisToPlayer">
<input type = "submit" value = "Delete Selected Player" name="doThisToPlayer">
<input type = "submit" value = "Add New Player" name = "doThisToPlayer"><br />
</form>
<a href = "index.html">Back to main menu</a><br />
<a href = "searchOwner.html">Search on player via owner</a><br />
</body>
</html>

