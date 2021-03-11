<%@page import="item.lab3tute"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%
     if (request.getParameter("itemCode") != null)
    {
    	lab3tute itemObj = new  lab3tute();
		String stsMsg = itemObj.insertItem(request.getParameter("itemCode"),
		request.getParameter("itemName"),
		request.getParameter("itemPrice"),
		request.getParameter("itemDesc"));
		session.setAttribute("statusMsg", stsMsg);
	
	}

	if (request.getParameter("itemID") != null)
	 {
		
	 lab3tute itemObj = new lab3tute();
	 String stsMsg2 = itemObj.updateItem(request.getParameter("itemCode"),
	 request.getParameter("itemName"),
	 request.getParameter("itemPrice"),
	 request.getParameter("itemDesc"));
	 session.setAttribute("statusMsg", stsMsg2);
	 
	 }

	if (request.getParameter("itemID") != null)
	 {
		
     lab3tute itemObj = new lab3tute();
	 String stsMsg3 = itemObj.deleteItem(request.getParameter("itemID"));
	 session.setAttribute("statusMsg", stsMsg3);
	 
	 }





%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Items Management</title>
</head>
<body>
  <h1>Items Management</h1>
		<form method="post" action="items.jsp">
		Item code: <input name="itemCode" type="text"><br>
		Item name: <input name="itemName" type="text"><br>
		Item price: <input name="itemPrice" type="text"><br>
		Item description: <input name="itemDesc" type="text"><br>
<input name="btnSubmit" type="submit" value="Save">
</form>
<%
out.print(session.getAttribute("statusMsg"));
%>
<br>
<%
lab3tute itemObj = new lab3tute();
out.print(itemObj.readItems());
%>
</body>
</html>