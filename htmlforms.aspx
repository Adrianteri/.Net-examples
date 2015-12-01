<%@ Page Title="" Language="C#"%>
<html>
	<body>
		<form method="POST">
			<input name="city" value='<%=Request.Form["city"]%>'/>  <br/>
			<input name="address"/>  <br/>
			<input name="county"  value="default county"/>  <br/>
			<select name="towns">
				<option value="1" <%=((Request.Form["towns"]=="1")?"selected":"")%>  >Town 1</option>
				<option value="2" <%=((Request.Form["towns"]=="2")?"selected":"")%> >Town 2</option>
			</select>
			<input name="mybutton" type="submit" Value=" click here " />  <br/>
		</form>
		
<%
Response.Write ("<br/>You have typed city: " + Request.Form["city"]);
Response.Write ("<br/>You have chosen: " + Request.Form["towns"]);
%>		
	</body>
</html>
