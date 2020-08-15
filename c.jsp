
<%@ page import="java.sql.*" %>
<% String id=request.getParameter("ff");
 String ss=request.getParameter("mm");
 String cus=request.getParameter("nn");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","Karthi321");
try{
	Statement stmt=con.createStatement();

       stmt.executeQuery("declare c number;d number;p number;begin update ord set num='"+ss+"' where ord_id='"+id+"';select i.price,o.num into c,d from ord o,items i where i.f_id=o.f_id and ord_id='"+id+"';p:=abcde(c,d);update ord set price=p where ord_id='"+id+"';insert into cheap1 values(p,d,'"+cus+"');end;");
//	stmt.executeQuery("update cheap set id='"+id+"' and cid='"+ss+"'");
	ResultSet rs1=stmt.executeQuery("select * from cheap1 where cusid='"+cus+"'");
while(rs1.next())
{String aq=rs1.getString("price");
String ar=rs1.getString("num");
%><center>Updated price amount is <b><%out.println(aq);%></b>for <b><%out.println(ar);%></b> items...<%}
ResultSet rs=stmt.executeQuery("select * from ord where ord_id='"+id+"'");
while(rs.next())
{String id1=rs.getString("id");
String food_id=rs.getString("f_id");
String order_item=rs.getString("ord_item");
String num=rs.getString("num");
String price=rs.getString("price");

%>

 <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">YOUR ORDER DETAILS...</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Restaurant ID:</td>
                        <td><%out.println(id1);%></td>
                    </tr>
                    <tr>
                        <td>Food ID:</td>
                        <td><%out.println(food_id);%></td>
                    </tr>
                    <tr>
                        <td>Food Item:</td>
                        <td><%out.println(order_item);%></td>
                    </tr>
                    <tr>
                        <td>Number of items:</td>
                        <td><%out.println(num);%></td>
                    </tr>
                    <tr>
                        <td>Price:</td>
                        <td>
                        <%out.println(price);%>    
                        </td>
                    </tr>
                </tbody>
            </table>
            </center>

<%
}	
}
catch(Exception e)
{out.println("enter valid customer id...if you have already visited this page with one customer id.You cannot visit it again with same customer id");
}       
       con.close();
//       out.println("Successfully inserted");
       %>