<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Owner List</title>
</head>
<body>
 Owners List:<br />
 <form action = "searchOwnerServlet" method="post"></form>
<table>
<c:forEach items="${requestScope.enteredOwner}" var="currentplayer">
 <tr>
   <td><input type="radio" name="owner" value="${currentplayer.owner}"></td>
   <td>${currentplayer.team}</td>
   <td>${currentplayer.name}</td>
   <td>${currentplayer.owner}</td>
 </tr>
</c:forEach>
</table>
<a href = "index.html">Back to main menu</a>
<a href = "searchOwner.html">Search on player via owner</a><br />
</body>
</html>
