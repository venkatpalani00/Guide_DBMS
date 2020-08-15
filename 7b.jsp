  <%@ page import="java.sql.*" %><br><br><br><br>
    <%
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","Karthi321");
%>
    <%Statement stmt=con.createStatement();
    String a=request.getParameter("a");
   ResultSet rs=stmt.executeQuery("select r.id,r.name,r.contact,r.type,r.ratings from rest r,items s where r.id=s.id and s.food_item='"+a+"'");
%><center><b>RESTAURANT DETAILS...</b><br><br><%
while(rs.next())
{String ab=rs.getString("id");
String ac=rs.getString("name");
String ad=rs.getString("contact");
String ae=rs.getString("type");
String af=rs.getString("ratings");

%>
<TABLE border="1" width="30%">
<tr><th>RESTAURANT ID</th><td><%out.println(ab);%></td></tr>
<tr><th>RESTAURANT NAME</th><td><%out.println(ac);%></td></tr>
<tr><th>CONTACT</th><td><%out.println(ad);%></td></tr>
<tr><th>TYPE</th><td><%out.println(ae);%></td></tr>
<tr><th>RATINGS</th><td><%out.println(af);%></td></tr>
</table><br>
<%}
    %>
    