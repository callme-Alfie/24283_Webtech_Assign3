<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>User</title>
</head>
<body>
    <center>
        <h1>User </h1>
        <h2>
            <a href="new">Add New User</a>
            &nbsp;&nbsp;&nbsp;
            <a href="list">List All Users</a>
        </h2>
    </center>
    <div align="center">
        <h1>Add New User</h1>
        <form action="adduser.jsp" method="post">
            <table>
                <tr><td>Name:</td><td><input type="text" name="name" value="<c:out value='${param.name}' />"/></td></tr>
                <tr><td>Password:</td><td><input type="password" name="password" value="<c:out value='${param.password}' />"/></td></tr>
                <tr><td>Email:</td><td><input type="email" name="email" value="<c:out value='${param.email}' />"/></td></tr>
                <tr><td>Sex:</td><td><input type="radio" name="sex" value="male" <c:if test="${param.sex == 'male'}">checked</c:if>/>Male 
                        <input type="radio" name="sex" value="female" <c:if test="${param.sex == 'female'}">checked</c:if>/>Female 
                </td></tr>
                <tr><td>Country:</td><td>
                        <select name="country" style="width:155px">
                            <option <c:if test="${param.country == 'India'}">selected</c:if>>India</option>
                            <option <c:if test="${param.country == 'Pakistan'}">selected</c:if>>Pakistan</option>
                            <option <c:if test="${param.country == 'Afghanistan'}">selected</c:if>>Afghanistan</option>
                            <option <c:if test="${param.country == 'Berma'}">selected</c:if>>Berma</option>
                            <option <c:if test="${param.country == 'Other'}">selected</c:if>>Other</option>
                        </select>
                    </td></tr>
                <tr><td colspan="2"><input type="submit" value="Add User"/></td></tr>
            </table>
        </form>
    </div> 
</body>
</html>