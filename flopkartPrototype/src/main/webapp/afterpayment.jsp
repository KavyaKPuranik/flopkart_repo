<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="metaContent.jsp" %>
	
<title>After Payment</title>
</head>
<body>
	
	<h1 id="heading"></h1>
	
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
	
	<script>
	
	$(document).ready(function(){
		var account=<%=request.getParameter("accountno")%>
		var pin=<%=request.getParameter("password")%>
		 var ctxPath = "<%=request.getContextPath()%>";
		  var totalamount=5000
		  console.log(totalamount);
		
		$.ajax({
			type : 'GET',
			contentType : 'application/json',
			url : ctxPath + "/webapi/account/accountno/"+account,
			dataType : "json",
			success : function(res)
			{
				
				if(res.balance>=totalamount)
					{
						console.log("success");
						$('#heading').text("Request Successful");
					}
				else
					{
						$('#heading').text("Request Unsuccessful");
					}
				
			},
			error : function(){
				alert("error");
			}
		});	
	}
	);
	</script>
</body>
</html>