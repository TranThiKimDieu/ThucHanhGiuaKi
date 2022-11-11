<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      <h1>Order Summary</h1>
	<table border="1">
		<tr>
			<td>Processor</td>
			<!-- Lấy dữ liệu từ ô input với name là choose -->
			<td><%=request.getParameter("choose")%></td>
		</tr>
		<tr>
			<td>Accessories</td>
			<td>
			<%if(request.getParameter("a") != null) out.print(request.getParameter("a") + "<br>");%>
			<!-- Vì sản phẩm dduocj chọn nhiều
				Nên phải dùng getParameterValues để lấu nhiều giá trị từ ô input "lap" , trả về mảng String-->
			<%
				String[] listlap = request.getParameterValues("lap");
			
			    	for(int i = 0 ; i<listlap.length;i++){
			    		
			    		%>
			    		<p><%out.print(listlap[i]); %></p>
			    		<%
			    		
			    	}
			    	String[] listdt = request.getParameterValues("dt");
					
			    	for(int i = 0 ; i<listdt.length;i++){
			    		
			    		%>
			    		<p><%out.print(listdt[i]); %></p>
			    		<%
			    		
			    	}
					String[] listip = request.getParameterValues("ip");
					
			    	for(int i = 0 ; i<listip.length;i++){
			    		
			    		%>
			    		<p><%out.print(listip[i]); %></p>
			    		<%
			    		
			    	}
			    %>
			   
			</td>
			
		</tr>
	</table>
	 <h1 style="color: green">Thanks</h1>
   
</body>
</html>