
<style>
     body
            {
                background-image:url(.jpg);
                background-repeat: no-repeat;
                background-position:center;
                background-size: cover;
            }
</style>

<%@ page import="java.sql.*" %>
<% String id=request.getParameter("ab");
		String address=request.getParameter("ac");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","Karthi321");
try{
	Statement stmt=con.createStatement();

       stmt.executeQuery("update items set price='"+address+"' where f_id='"+id+"'");
	ResultSet rs=stmt.executeQuery("select * from trig where fid='"+id+"' and up_cost='"+address+"'");
	if(rs.next()){
String a=rs.getString("food");
String ab=rs.getString("fid");
String b=rs.getString("prev_cost");
String c=rs.getString("up_cost");

%>
UPDATION TRIGGERED THE INSERTION PROCESS...
<TABLE border="1" width="30%">
<tr colspan=2>Price details...</tr><tr><th>FOOD-ITEM</th><td><%out.println(a);%></td></tr>
<tr><th>FOOD ITEM</th><td><%out.println(ab);%></td></tr>
<tr><th>PREVIOUS COST</th><td><%out.println(b);%></td></tr>
<tr><th>UPDATED COST</th><td><%out.println(c);%></td></tr></TABLE>
</table>
<%}
else
	out.println("Enter Valid option...");
}
catch(Exception e)
{out.println("enter valid food_id");
}       
       con.close();
//       out.println("Successfully inserted");
       %>