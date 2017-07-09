
<%@page import="javax.servlet.ServletInputStream,javax.servlet.http.HttpServletRequest"%>
<%@page import="java.io.BufferedReader,java.io.InputStreamReader"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    response.setContentType("application/json");

    if (request.getMethod() == "GET") {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amplier", "root", "");
            Statement st = con.createStatement();
            int i = st.executeUpdate("select * from ads");
            response.getWriter().write(i);
        } catch (Exception e) {
            System.out.print(e);
            e.printStackTrace();
        }

        
    }

%>
