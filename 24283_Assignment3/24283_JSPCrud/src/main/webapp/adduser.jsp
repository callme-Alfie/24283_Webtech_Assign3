<%@ page import="com.JSPCrud.DAO.UserDAO" %>
<jsp:useBean id="u" class="com.JSPCrud.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
UserDAO userDao = new UserDAO();
try {
    userDao.saveUser(u);
    response.sendRedirect("adduser-success.jsp");
} catch (Exception e) {
    e.printStackTrace();
    response.sendRedirect("adduser-error.jsp");
}
%>