
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Database</title>
        <link rel="stylesheet" type="text/css" href="format.css"/>
    </head>

    <% String table = (String) request.getAttribute("table");%>

    <body>
        <div class="wrap">

            <%@ include file="includes/header.jsp" %>

            <%@ include file="includes/menu.jsp" %>

              <div class="searchbox">
                    <form class="box" name="searchForm" action="search" method="post">
                        <input type="text" name="searchVal" value="">
                        <br>
                        <input type="submit" name="submit" value="Search">

                    </form>
                </div>
            <div class="main">
                
                <h1>Customers</h1>

                <%= table%>

                <br><br>

                <a href ="add"> Add A New Customer </a>
                <br><br>
                <a href="search.jsp"> Search Customers</a>

            </div>


            <%@ include file="includes/footer.jsp" %>

        </div>

    </body>
</html>
