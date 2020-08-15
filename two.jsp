<%@ page import="java.sql.*" %>
<%
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","Karthi321");%>
<% 
String a=request.getParameter("place");
//out.print(a);	
String b=request.getParameter("checkin");
//out.print(b); 
String c=request.getParameter("days");
//out.print(c);
String d=request.getParameter("guest");
//out.print(d);
String e=request.getParameter("id");
//out.print(e); 



Statement stmt=conn.createStatement();

       stmt.executeUpdate("insert into home values('"+e+"','"+d+"','"+c+"','"+b+"','"+a+"')");

	/*ResultSet rs=stmt.executeQuery("select * from addhome where place='"+a+"' and dates='"+b+"' and guest='"+d+"'");
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
                height: 60%;
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
          <a style="text-decoration:none" href="home1.jsp">Home</a>
       </div>
       
       <div class="three">
           <table border="1" width="30%" cellpadding="3">

<%ResultSet rs1=stmt.executeQuery("select * from addhome where place='"+a+"' and dates='"+b+"' and guest='"+d+"' ");

%>

                <thead>
                    <tr>
                        <th colspan="4">LIST OF RESTAURANTS</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>HOTEL NAME</th>
                        <th>PLACE</th>
                        <th>NUMBER OF GUESTS</th>
			<th>PRICE</th>
                    </tr>

<%
   while (rs1.next()) {
            String name = rs1.getString("house");
            String pla= rs1.getString("place");
             String gue= rs1.getString("guest");
		String pr= rs1.getString("price");
          
         // String job = rs.getString("SNO");
//String ci = rs.getString("CITY");
%>
                    <tr>
                        <td><%out.println(name);%></td>
                        <td><%out.println(pla);%></td>
                        <td><%out.println(gue);%></td>
                        <td><%out.println(pr);%></td>
                    </tr>    <%    
         }

	%>
</tbody>
</table></DIV>
      </div>
      <br>
       <div class="four">
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <p>Enter any of the listed place</p>
                    
                      <form action="booking.jsp" id="two.jsp" method="post">
                      <input type="text" name="available">
                    
                       
                             <br><br>
                                      <input type="SUBMIT">
      
           </body>
</html>