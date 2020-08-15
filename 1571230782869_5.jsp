

<%@ page import="java.sql.*" %>
<% String id=request.getParameter("a");
		String ratings=request.getParameter("e");
		String food_item=request.getParameter("f");
		String food_id=request.getParameter("g");
		String price=request.getParameter("h");
	try{
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:venkat","system","venkat");
	Statement stmt=con.createStatement();
       stmt.executeUpdate("insert into items(id,f_id,food_item,price) values('"+id+"','"+food_id+"','"+food_item+"','"+price+"')");
       con.close();
       %>
<style>
body{
	background-color: black;
	background-repeat: no-repeat;
}
li{font-size:25;
	list-style-type: none;
	text-align: center;
	text-shadow: 5px;
	color: white;
	font-family: cursive;
}
h{
	font-size: 35;
	font-family: cursive;
	color: white;

}
p{
	font-size: 25;
	font-family: cursive;
	color: skyblue; 
}
fieldset{
	border-color: white;
	width: 50%;
}
legend
{
	font-size: 20;
	font-family: monospace;
	color:red;
	background-color: white;
}
form{
	font-size: 20;
	color:yellow;
}
option{
	font-family: monospace;
	color:red;
	font-size: 15;
}
.su:hover{
	color:white;
	background-color: red;
	font-size: 20;
}
.su{
	color:red;
	background-color:white;
	font-size: 25;

}
</style><center>
       <body background="bg2.jpg">
      <h><b>Successfully inserted.</b></h><br><br><br>
      <a href=4.jsp><input class=su type="SUBMIT"  name="submit"value="Submit another food item" width=100% height=100%><br><br></a>
      <a href=1.jsp><input class=su type="SUBMIT"  name="submit"value="Go to front page" width=100% height=100%><br><br></a></body></center>
      <%
}
catch (Exception e){
out.println("Error.Not inserted.");
}
%>