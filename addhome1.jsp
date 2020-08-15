<%@ page import="java.sql.*" %>
<% String place=request.getParameter("place");
String ho=request.getParameter("hotel");
		String ch=request.getParameter("checkin");
		String gu=request.getParameter("guest");
		String id=request.getParameter("add_id");
		String pr=request.getParameter("price");
		String ab=request.getParameter("ability");
	
try
{
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","Karthi321");
	Statement stmt=con.createStatement();

       stmt.executeUpdate("insert into addhome values('"+place+"','"+ho+"','"+ch+"','"+gu+"','"+id+"','"+pr+"','"+ab+"')");
       con.close();
//       out.println("Successfully inserted");
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
	color:orange;
	background-color: green;
	font-size: 20;
}
.su{
	color:green;
	background-color: orange;
	width:120px;
	height:40px;
	font-size: 25;

}
</style>
<body background="bg2.jpg">
<center>	
<h><b>Tuple updated...</b></h><br><br><br>
<%
}
catch (Exception e)
{
out.println("Error.Not inserted.");
}
%>
