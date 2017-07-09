
<%@page import="javax.servlet.ServletInputStream,javax.servlet.http.HttpServletRequest"%>
<%@page import="java.io.BufferedReader,java.io.InputStreamReader"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    response.setContentType("text/html; charset=utf-8");

    if (request.getMethod() == "GET") {

        try {
            ResultSet resultSet = null;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amplier", "root", "");
            Statement st = con.createStatement();
            resultSet = st.executeQuery("select * from ads");
            while (resultSet.next()) {
%>


<div class="result-item format-standard">
    <div class="result-item-image">
        <a href="vehicle-details.html" class="media-box"><img src="../resources/core/images/patterns/pt17.png" alt=""></a>
        <span class="label label-default vehicle-age">2014</span>
        <div class="result-item-view-buttons">
            <a href="vehicle-details.html"><i class="fa fa-plus"></i> View details</a>
        </div>
    </div>
    <div class="result-item-in">
        <h4 class="result-item-title"><a href="vehicle-details.html"><%=resultSet.getString("ad_name")%></a></h4>
        <div class="result-item-cont">
            <div class="result-item-block col1">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam..</p>
            </div>
            <div class="result-item-block col2">
                <div class="result-item-pricing">
                    <div class="price">LKR <%=resultSet.getString("ad_price")%></div>
                </div>
                <div class="result-item-action-buttons">
                    <a href="#" class="btn btn-default btn-sm"><i class="fa fa-star-o"></i> Save</a>
                    <a href="vehicle-details.html" class="btn btn-default btn-sm">Enquire</a><br>
                    <a href="#" class="distance-calc"><i class="fa fa-map-marker"></i> Distance from me?</a>
                </div>
            </div>
        </div>
        <div class="result-item-features">
            <ul class="inline">
                <li>4 door SUV</li>
                <li>6 cyl, 3.0 L Petrol</li>
                <li>6 speed Automatic</li>
                <li>4x4 Wheel Drive</li>
                <li>Listed by Individual</li>
            </ul>
        </div>
    </div>
</div>

<%
            }
        } catch (Exception e) {
            System.out.print(e);
            e.printStackTrace();
        }

    }

%>


