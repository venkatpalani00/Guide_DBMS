<html>
<style>
     body
            {
                background-image:url(ven.jpg);
                background-repeat: no-repeat;
                background-position:center;
                background-size: cover;
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
	font-size: 25;
	font-family: cursive;
	color: skyblue; 
}
fieldset{
	border-color: white;
	width: 50%;
}
legend
{
	font-size: 20;
	font-family: monospace;
	color:red;
	background-color: white;
}

form{
	font-size: 20;
	color:yellow;
}
option{
	font-family: monospace;
	color:red;
	font-size: 15;
}
.su:hover{
	color:white;
	background-color: red;
	font-size: 20;
}
.su{
	color:red;
	background-color: white;

	font-size: 15;

}
.u
{
color:white;
}
table{
color:white;
}
</style>
<body background="bg2.jpg">
<%@ page import="java.sql.*" %>
<%! String[] sports; %>
<%! int count=0;%>
<%String cus=request.getParameter("ii"); 
String id=request.getParameter("i");
		String food_id=request.getParameter("j");
		String order_item=request.getParameter("k");
		String num=request.getParameter("l");

	try
{
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","Karthi321");
	//out.println(id);
	Statement stmt=con.createStatement();
	/*ResultSet rs=stmt.executeQuery("select price from items where id='"+id+"' and f_id='"+food_id+"'");
	while(rs.next())
	{
		String st=rs.getString("price");
		out.println(st);
		//int n=num*st;
		//out.println(n);
	}*/
      stmt.executeUpdate("insert into ord select '"+id+"','"+food_id+"',seq_person.nextval,'"+order_item+"','"+num+"','"+num+"'*price,'"+cus+"' from items where id='"+id+"' and f_id='"+food_id+"'");
     //  out.println("inserted");
%>

<h><b>Your order has been placed...<br><br><br>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Example</title>
    </head>
    <body>
<div class="u">
        <form method="post" action="login.jsp">
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">YOUR ORDER DETAILS...</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Restaurant ID:</td>
                        <td><%out.println(id);%></td>
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
                            <%@ page import="java.sql.*" %>
                        	<%
                        	//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:venkat","system","venkat");
                        	//Statement stmt=con.createStatement();
                             //out.println("a");
                        	ResultSet rs=stmt.executeQuery("select price from ord where id='"+id+"' and f_id='"+food_id+"' and num='"+num+"'");
                            //out.println("b");
                        	if(rs.next())
                        	{
                        		String t=rs.getString("price");
                        		out.println(t);
                        	}
                        	%>
                        </td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
         <% 
   sports = request.getParameterValues("e");
   count=0;
   if (sports != null) 
   {
      for (int i = 0; i < sports.length; i++) 
      {
         count++;
      }
   }
 if(count!=0){  
stmt.executeQuery("update rest set ratings=((select ratings from rest where id='"+id+"')+"+count+")/2 where id='"+id+"'");
%><center>
<p>Thanks for your rating...<br><br>Updated rating of the restaurant is:
            <%ResultSet r=stmt.executeQuery("select ratings from rest where id='"+id+"'");
            if(r.next())
                            {
                                String t=r.getString("ratings");
                                out.println(t);
                            }
}
  // else out.println ("<b>none<b>");
%>
       </center> 
        <br><center>
            <a href="6.1.jsp"><input class=su type="SUBMIT"  name="submit1" value="GO TO FILTER PAGE" width=100% height=100%><br><br></a>

        <a href=4.jsp><input class=su type="SUBMIT"  name="submit"value="Submit another order" width=100% height=100%></a>
      <a href=1.jsp><input class=su type="SUBMIT"  name="submit"value="Go to front page" width=100% height=100%><br><br></a></body></center>
      <form method="post" action="7a.jsp"><center>
       
        </form>
</div>
    </body>
</html>




</b></h><br><br><br><%
}
catch (Exception e){
e.printStackTrace();%><h><b>Your order has not been placed.<br>please try again later</b></h><br><br><br><%
}
%>
