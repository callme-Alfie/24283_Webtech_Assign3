<%@ page import="com.JSPCrud.DAO.UserDAO" %>
<jsp:useBean id="u" class="com.JSPCrud.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
UserDAO userDao = new UserDAO();
userDao.deleteUser(u.getId()); // Assuming getId() retrieves the user's ID
response.sendRedirect("viewusers.jsp");
%>