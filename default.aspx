<%@ Page Title="" Language="C#"%>
<html>
	<body>
		Hello world <br/>
		
	<%
/*	
	foreach (Object o in Request.ServerVariables){
		Response.Write (o);
		Response.Write ("=  ");
		Response.Write (Request.ServerVariables [o.ToString()]);
		Response.Write ("<br/> <br/>");
	}
*/

	foreach (Object q in Request.QueryString){
		Response.Write (q);
		Response.Write ("=  ");
		Response.Write (Request.QueryString [q.ToString()]);
		Response.Write ("<br/> <br/>");
	}
	%>	
	</body>
</html>
