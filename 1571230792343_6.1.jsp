<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<style type="text/css">
body{
	background-color: yellow;
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
	font-size: 40;
	font-family: cursive;
	color: skyblue; 
}
fieldset{
	border-color: white;
	width: 50%;
}
legend
{
	font-family: monospace;
	color:red;
	background-color: white;
}
form{
	color:yellow;
}
option{
	font-family: monospace;
	color:red;
	font-size: 15;
}
.su:hover{
	color:black;
	background-color:white;
	font-size: 20;
}
.su{
	color:white;
	background-color:black;
	font-size: 25;
}
</style>
<center>
<body><DIV>
<p><font size=40>Our registered restaurants...</font></p>
	<%@ page import="java.sql.*" %>
	<%
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:venkat","system","venkat");
%>
	<%Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select name,id,contact from rest");%><br>
         
 <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="3">LIST OF RESTAURANTS</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>NAME</th>
                        <th>ID</th>
                        <th>CONTACT NUMBER</th>
                    </tr>

<%
   while (rs.next()) {
            String name = rs.getString("name");
            String id = rs.getString("id");
             String no = rs.getString("contact");
          
         // String job = rs.getString("SNO");
//String ci = rs.getString("CITY");
%>
                    <tr>
                        <td><%out.println(name);%></td>
                        <td><%out.println(id);%></td>
                        <td><%out.println(no);%></td>
                    </tr>    <%    
         }

	%>
</tbody>
</table></DIV>

<div>
	<%
    ResultSet rs2=stmt.executeQuery("select i.id,i.f_id,i.food_item,i.price,r.name from rest r,items i where i.id=r.id");%><br>
         
 <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="5">LIST OF FOOD ITEMS</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                       <th>RESTAURANT ID</th>
                        <th>FOOD ID</th>
                        <th>RESTAURANT NAME</th>
                        <th>FOOD ITEM</th>
                        <th>PRICE</th>    
                    </tr>

<%
   while (rs2.next()) {
String name = rs2.getString("name");
            String id = rs2.getString("id");
            String fid = rs2.getString("f_id");
            String fite = rs2.getString("food_item");
            String pr= rs2.getString("price");
%>
                    <tr><td><%out.println(id);%></td>
                        <td><%out.println(fid);%></td>
                            <td><%out.println(name);%></td>
                        <td><%out.println(fite);%></td>                           
                        <td><%out.println(pr);%></td>
                    </tr>    <%    
         }
 
	%>
</tbody>
</table></DIV>

<br><br><br><br>FILTER HERE...
		<form method='POST' action=6.2.jsp>
<select align=left name="b" placeholder="Filters">
	<option value="veg" name="b">VEG</option>
	<option value="non-veg" name="b">NON-VEG</option>
	<option value="3" name="b">Price range:200-300</option>
	<option value="2" name="b">Price range:100-200</option>
	<option value="1" name="b">Price range:50-100</option>
	<option value="0" name="b">Price range:below 50</option>
		</select>
		<button>GO</button>
<br><br><br><br>
</form>

<fieldset>
	<legend><font size="5">Find your food:)</legend>
	<form method="post" action="7b.jsp"><select name="e">
		<% ResultSet rs1=stmt.executeQuery("select food_item from items");
		while(rs1.next())
		{	Integer z=1;
			String ven=rs1.getString("food_item");%>
				<option name="e" value="<%out.println(ven);%>">
			<%out.println(ven);%></option><br><% 
			z++;
		}
		%></select>
		<button>GO</button>>
	</form>
</fieldset><br><br>

<a href="6.jsp"><input class=su type="SUBMIT"  name="submit1" value="PLACE YOUR ORDER HERE..." width=100% height=100%><br><br></a>
		
</center>
</html>