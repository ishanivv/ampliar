
<%@page import="javax.servlet.ServletInputStream,javax.servlet.http.HttpServletRequest"%>
<%@page import="java.io.BufferedReader,java.io.InputStreamReader"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    response.setContentType("application/json");

    if (request.getMethod() == "POST") {

        String ad_name = request.getParameter("ad_name");
        String ad_price = request.getParameter("ad_price");
        String category = request.getParameter("category");
        String description = request.getParameter("description");
        String sub_category = request.getParameter("sub_category");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amplier", "root", "");
            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into ads(ad_name,ad_price,description,status) values('" + ad_name + "','" + ad_price + "','" + description + "',1)");
            // New location to be redirected
            String site = new String("/ampliar/views/list.jsp");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", site);
        } catch (Exception e) {
            System.out.print(e);
            e.printStackTrace();
        }

    }

%>
