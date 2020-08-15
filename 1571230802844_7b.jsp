  <%@ page import="java.sql.*" %>
    <%
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:venkat","system","venkat");
%>
    <%Statement stmt=con.createStatement();
    String a=request.getParameter("a");
    out.println(a);
    %>
    