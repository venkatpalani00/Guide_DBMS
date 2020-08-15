<%@ page import="java.sql.*" %>
<% String id=request.getParameter("a");
//String rena=request.getParameter("ab");
		String address=request.getParameter("b");
		String contact=request.getParameter("c");
		String type=request.getParameter("d");
		String name=request.getParameter("ab");
		String loc=request.getParameter("ca");
		String are=request.getParameter("cb");
	try
{
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","Karthi321");
	Statement stmt=con.createStatement();

       stmt.executeUpdate("insert into rest(id,name,contact,type,ratings) values('"+id+"','"+name+"','"+contact+"','"+type+"',0)");
       stmt.executeUpdate("insert into addr(id,address,location,area) values('"+id+"','"+address+"','"+loc+"','"+are+"')");
       con.close();
//       out.println("Successfully inserted");
       %>
<style>
  body
            {
                background-image:url(11.jpg);
                background-repeat: no-repeat;
                background-position:center;
                background-size: cover;
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
<h><b>Welcome...</b></h><br><br><br>
<fieldset>
	<legend>Your details has been successfully inserted.<br><br>Give the details of your food-items...</legend>
<form  action="5.jsp" method="post">
Restaurant ID:<input type="number" name="a" required><br><br>
food item:<input type="text" name="f" required><br><br>
food id:<input type="number" name="g" required><br><br>
price:<input type="number" name="h" required><br><br>
<input class=su type="SUBMIT"  name="submit"value="SUBMIT" width=100% height=100%><br><br>
</form>
</fieldset>

</center>
</body>
</html>
<%
}
catch (Exception e){
out.println("Error.Not inserted.");
}
%>
