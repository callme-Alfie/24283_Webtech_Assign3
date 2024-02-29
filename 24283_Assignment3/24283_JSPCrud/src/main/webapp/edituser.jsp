<%@ page import="com.JSPCrud.DAO.UserDAO" %>
<jsp:useBean id="u" class="com.JSPCrud.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
UserDAO userDao = new UserDAO();
userDao.updateUser(u);
response.sendRedirect("viewusers.jsp");
%>