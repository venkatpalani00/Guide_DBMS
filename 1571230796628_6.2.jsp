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
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:venkat","system","venkat");
%>
	<%
    String ab=request.getParameter("b");
    if(ab.equals("veg")){  
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select name,id,contact from rest where type='veg'");
    %><p><center>VEG RESTAURANTS</p>
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
</table><br><br><br><br>
<%} 

else if(ab.equals("non-veg")){  
    Statement stmt=con.createStatement();
    ResultSet rs1=stmt.executeQuery("select name,id,contact from rest where type!='veg'");
    %><p><center>NON-VEG RESTAURANTS</p>
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
   while (rs1.next()) {
            String name = rs1.getString("name");
            String id = rs1.getString("id");
             String no = rs1.getString("contact");
          
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
</table><br><br><br><br>
<%}

else if(ab.equals("3")){  
    Statement stmt=con.createStatement();
    ResultSet rs2=stmt.executeQuery("select i.id,i.f_id,i.food_item,i.price,r.name from rest r,items i where i.price between 200 and 300 and i.id=r.id");
    %><p><center>PRICE 200 TO 300</p>
    <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="5">LIST OF RESTAURANTS</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>RESTAURANT ID</th>
                        <th>FOOD ID</th>
                        <th>NAME</th>
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
</table><br><br><br><br>
<%}

else if(ab.equals("2")){  
    Statement stmt=con.createStatement();
    ResultSet rs2=stmt.executeQuery("select i.id,i.f_id,i.food_item,i.price,r.name from rest r,items i where i.price between 100 and 200 and i.id=r.id");
    %><p><center>PRICE 200 TO 300</p>
    <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="5">LIST OF RESTAURANTS</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
<th>RESTAURANT ID</th>
                        <th>FOOD ID</th>
                        <th>NAME</th>
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
</table><br><br><br><br>
<%}


else if(ab.equals("1")){  
    Statement stmt=con.createStatement();
    ResultSet rs2=stmt.executeQuery("select i.id,i.f_id,i.food_item,i.price,r.name from rest r,items i where i.price between 50 and 100 and i.id=r.id");
    %><p><center>PRICE 200 TO 300</p>
    <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="5">LIST OF RESTAURANTS</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                       <th>RESTAURANT ID</th>
                        <th>FOOD ID</th>
                        <th>NAME</th>
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
</table><br><br><br><br>
<%}


else if(ab.equals("0")){  
    Statement stmt=con.createStatement();
    ResultSet rs2=stmt.executeQuery("select i.id,i.f_id,i.food_item,i.price,r.name from rest r,items i where i.price<50 and i.id=r.id");
    %><p><center>PRICE 200 TO 300</p>
    <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="5">LIST OF RESTAURANTS</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>RESTAURANT ID</th>
                        <th>FOOD ID</th>
                        <th>NAME</th>
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
</table><br><br><br><br>
<%}
    else{
out.println("error");
}


%><br><br>
<a href="6.jsp"><input class=su type="SUBMIT"  name="submit1" value="PLACE YOUR ORDER HERE..." width=100% height=100%><br><br></a>
