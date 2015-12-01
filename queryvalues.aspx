<%@ Page Title="" Language="C#"%>
<html>
	<body>
	<a href="queryvalues.aspx?city=Nairobi">NBI</a><br/>
	<a href="queryvalues.aspx?city=Nanyuki">NYK</a><br/>
	<a href="queryvalues.aspx?city=Mombasa">MSA</a><br/>
	<a href="queryvalues.aspx?city=Kisumu">KSM</a><br/>
<%

	if (Request.QueryString ["city"] == "Nairobi")
		Response.Write ("Prefix = 020");
	if (Request.QueryString ["city"] == "Mombasa")
		Response.Write ("Prefix = 040");

%>		
	</body>
</html>
