<%@ Page Title="" Language="C#"%>
<html>
	<body>
		Query String Data <br/>
		
	<%
	foreach (Object q in Request.QueryString){
		Response.Write (q);
		Response.Write ("=  ");
		Response.Write (Request.QueryString [q.ToString()]);
		Response.Write ("<br/> <br/>");
	}
	%>	
		<br/>
		Form  Data <br/>
		
	<%
	foreach (Object q in Request.Form){
		Response.Write (q);
		Response.Write ("=  ");
		Response.Write (Request.Form [q.ToString()]);
		Response.Write ("<br/> <br/>");
	}
	%>	
	</body>
</html>
