
<%@page import="javax.servlet.ServletInputStream,javax.servlet.http.HttpServletRequest"%>
<%@page import="java.io.BufferedReader,java.io.InputStreamReader"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    response.setContentType("application/json");

    if (request.getMethod() == "POST") {

        String ad_name = request.getParameter("ad_name");
        String ad_price = request.getParameter("ad_price:");
        String category = request.getParameter("category:");
        String sub_category = request.getParameter("sub_category");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amplier", "root", "");
            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into ads(ad_name,ad_price,status) values('" + ad_name + "','" + ad_price + "',1)");
            response.getWriter().write("Advertisement was successfully posted.");
        } catch (Exception e) {
            System.out.print(e);
            e.printStackTrace();
        }

        
    }

%>
