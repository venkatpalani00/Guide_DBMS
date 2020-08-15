<%@ page import="java.sql.*" %>
<% String id=request.getParameter("ff");
 String ss=request.getParameter("mm");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","Karthi321");
try{
	Statement stmt=con.createStatement();

       stmt.executeQuery("declare c number;d number;begin select price into c from items where f_id='"+id+"';abcd(c,d);insert into cheap values(d,'"+id+"','"+ss+"');end;");
//	stmt.executeQuery("update cheap set id='"+id+"' and cid='"+ss+"'");
	ResultSet rs=stmt.executeQuery("select * from cheap where cusid='"+ss+"'");
while(rs.next())
{String aq=rs.getString("a");
%><b><center>Discount for the selected food item is 10% and the amount to be paid is </b><%out.println(aq);
}	

}
catch(Exception e)
{out.println("enter valid customer_id...if you have already visited this page with one customer id.You cannot visit it again with same customer id");
}       
       con.close();
//       out.println("Successfully inserted");
       %>