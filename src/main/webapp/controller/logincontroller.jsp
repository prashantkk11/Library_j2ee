<%@page import="com.mvcjsp.daoimpl.UserDaoImpl"%>
<%@page import="com.mvcjsp.dao.UserDao"%>

<jsp:useBean class="com.mvcjsp.pojo.User" id="usr"
scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="usr"/>

<% 
  UserDao daoImpl = new UserDaoImpl();
  if(daoImpl.checkUserCredentials(usr)) {
	  session.setAttribute("USERNAME", usr.getUsername());
	  response.sendRedirect("home");
 }
  else {
	  response.sendRedirect("login.jsp?msg=loginerror");
  }
%>