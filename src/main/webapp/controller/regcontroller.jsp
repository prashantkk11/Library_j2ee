<%@page import="com.mvcjsp.daoimpl.UserDaoImpl"%>
<%@page import="com.mvcjsp.dao.UserDao"%>

<jsp:useBean class="com.mvcjsp.pojo.User" id="usr"
scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="usr"/>

<% 
  UserDao daoImpl = new UserDaoImpl();
  if(daoImpl.addNewUser(usr)) {
	  response.sendRedirect("login.jsp?msg=regsuccess");
 }
  else {
	  response.sendRedirect("register.jsp?msg=regerror");
  }
%>