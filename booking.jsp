<%@ page import="java.sql.*" %>
<%
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","Karthi321");%>
<% 
String f=request.getParameter("available");


Statement stmt=conn.createStatement();

    //   stmt.executeUpdate("insert into home values('"+e+"','"+d+"','"+c+"','"+b+"','"+a+"')");

  /*ResultSet rs=stmt.executeQuery("select house from addhome where place='"+a+"' and dates='"+b+"' and guest='"+d+"'");
while(rs.next())
{String ab=rs.getString("house");
out.println(ab);
}*/
   
%>
<html>
   <head>
        <title>
            Rental
        </title>
        <style type="text/css">
       body
            {
                background-image:url(bg2.jpg);
                background-repeat: no-repeat;
                background-position:center;
                background-size: cover;
            }
            .one a
            {
                float: right;
                padding-left:5%;
                font-style: bold;
                 color:white;
                font-size:30px;
                
}

            
            .two a
            {
                float: right;
              color:white;
                padding-left:20%; 
                font-style: bold;
                font-size:30px;
            }
            .three
            {
                color:black;
                float: right;
                width: 321px;
                  padding: 5%;
                  border:none;
                  margin: 0;
                 background: white;
                 opacity: 0.75;
                height: 56%;
                 position:absolute; left:55%; top:15%;
                
            }
            .four
            {
                
                float: right;
                width: 320px;
                  padding: 5%;
                  border:none;
                  margin: 0;
                 
                height: 30%;
                 position:absolute; left:55%; top:22%
            }
           


            
       </style>
   </head>
   <body>
      <div class="one">
          <a style="text-decoration:none" href="addhome.jsp">Host a Home</a>
       </div>
       <div class="one">
          <a style="text-decoration:none" href="realhome.jsp">Home</a>
       </div>
       
      <div class="three">
                    <table border="1" width="30%" cellpadding="3">

<%ResultSet rs1=stmt.executeQuery("select * from addhome where house='"+f+"' ");

%>

                <thead>
                    <tr>
                        <th colspan="4">SUCCESSFULLY BOOKED...</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>CUSTOMER ID</th>
                    

<%
   while (rs1.next()) {
            String id = rs1.getString("id");
             	 String gue= rs1.getString(2);
             String day = rs1.getString(3);
    String pla= rs1.getString(4);
         // String job = rs.getString("SNO");
//String ci = rs.getString("CITY");
%>
                        <td><%out.println(id);%></td></tr>
                        <tr><th>GUEST NUMBER</th>
                     <td><%out.println(gue);%></td></tr>
                        <tr><th>NUMBER OF TO BE STAYED</th>
                        <td><%out.println(day);%></td></tr>
                                                <tr><th>PLACE</th>
                        <td><%out.println(pla);%></td>
                    </tr>    <%    
         }
ResultSet rs=stmt.executeQuery("select price*guest from addhome where house='"+f+"'");
while(rs.next())
{String ab = rs.getString("price*guest");
%>
 <tr><th>PRICE</th>
                     <td><%out.println(ab);}%></td></tr>
}

 
</tbody>
</table></DIV>
      </div>
      <br>
       <div class="four">
                    
                      <form action="two.jsp" id="home1.jsp" method="post">
                      
                    
                      
                  
                                <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                          <pre>              
                    </form>
         </div>
   </body>
</html>