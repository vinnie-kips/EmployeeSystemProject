<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="datastructure.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%ArrayList<Manager> man=new ArrayList<Manager>();
	man=(ArrayList<Manager>)session.getAttribute("Manager");
%>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Department List</title>
  <link rel="stylesheet" type="text/css" href="css/user_info.css" />
  <link rel="stylesheet" type="text/css" href="css/button_style.css" />
</head>
<body>
<div> <jsp:include page="admin_header.jsp"/></div>
<!--  <div class=info_box>
<table width="100%">
<col width="80%"><col width="20%">
<tr>
<td><input type='text' name='dpmsearchcontent' size="75"/></td>
<td><input type=button value=Search  class="btn-style" onclick="" /></td>
</tr>
</table>
</div>-->
<div class=info_box>
<table width="100%">
<tr>
<td><h3>Department</h3></td>
</tr>
<tr>
<%for (int i=0;i<man.size();i++){ %>
<td><a href="admin_department_info.jsp?no=<%=i%>" class=link_name><%=man.get(i).getDepartment() %></a></td>
<%if ((i+1)%4==0) out.println("</tr><tr>");%>

<%} %>
</tr>
</table>

</div>

</body>
</html>




