<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>

</body>
</html>
<style type="text/css">
	p{
    font-size: 25;
    font-family: cursive;
    color: skyblue; 
}</style>
    <%@ page import="java.sql.*" %>
	<%
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","Karthi321");
%>
	<%
	String a=request.getParameter("a");
    String ab=request.getParameter("c");
    //out.println(ab);
   if(ab.equals("ord"))
    	{  
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select count(ord_id) from ord where id='"+a+"'");
out.println("Number of orders in your restaurant:");
         
   while (rs.next()) {
            String id = rs.getString("count(ord_id)");
            out.println(id);%><br><%
         }}

/* if(ab.equals("b")){  
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select count(ord_id) from ord where id='"+id+"'");
    %><p><center>VEG RESTAURANTS</p><%
out.println("Number of orders in your restaurant:");%><br><%
         
   while (rs.next()) {
            int id = rs.getInt("STATUS");
            out.println(id);%><br><%
         }
*/	
    else
    {
    	out.println("Error");
    }
	%>
