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
            .three p
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
          <p> </p>
      </div>
      <br>
       <div class="four">
                    
                     <%@ page import="java.sql.*" %>
<% String id=request.getParameter("id");
String dat=request.getParameter("checkin");
String bid=request.getParameter("bid");
		String address=request.getParameter("ac");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","Karthi321");
try{
	Statement stmt=con.createStatement();

       stmt.executeQuery("update addhome set dates='"+dat+"' where id='"+id+"'");
	ResultSet rs=stmt.executeQuery("select * from trig1 where id='"+id+"' and nextdates='"+dat+"'");
	if(rs.next()){
String a=rs.getString("id");
String b=rs.getString("prevdates");
String c=rs.getString("nextdates");

%>
UPDATION TRIGGERED THE INSERTION PROCESS...
<TABLE border="1" width="30%">
<tr colspan=2>Check-in details...</tr><tr><th>Customer ID</th><td><%out.println(a);%></td></tr>
<tr><th>PREVIOUS DATE</th><td><%out.println(b);%></td></tr>
<tr><th>UPDATED DATE</th><td><%out.println(c);%></td></tr></TABLE>
</table>
<%}
else
	out.println("Enter Valid option...");
}
catch(Exception e)
{out.println("enter valid CUS_id");
}       
       con.close();
//       out.println("Successfully inserted");
       %>
</div>

   </body>
</html>