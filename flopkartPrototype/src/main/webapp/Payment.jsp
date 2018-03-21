<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="metaContent.jsp" %>
	<title>Payment</title>
</head>
<body>
     
    <%@include file="header.jsp" %>
     
    
    <div id="formdiv" style="margin-top:100px;margin-bottom:100px">
    <center>
<form method="post" action="afterpayment.jsp">
  
  <input type="number" name="accountno" placeholder="Account Number" style="text-align:center;width:35%" >
  <br>
  
  <input type="password" name="password" placeholder="Password" style="text-align:center;width:35%">
  <br><br>
  <input type="submit" value="submit" style="width:15%">
</form>
</center>
</div>
     
    <%@include file="footer.jsp" %>
     
</body>
<script>
$(document).ready(function(){
    var ctxPath = "<%=request.getContextPath()%>";
    <%session.setAttribute("totalamount",1000);%>
	headerFunctions(ctxPath);
})
	
</script>
</html>