<%-- 
    Document   : updateForm
    Created on : Nov 23, 2015, 1:19:34 PM
    Author     : Jiawen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Customers"%>
<% Customers customer = (Customers) request.getAttribute("customer");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update A Customer</title>
        <link rel="stylesheet" type="text/css" href="format.css"/>
    </head>
    <body>

        <div class="wrap">

            <%@ include file="includes/header.jsp" %>

            <%@ include file="includes/menu.jsp" %>

            <div class="main">
                <div id="searchbox">
                    <form class="box" name="searchForm" action="search" method="post">
                        <input type="text" name="searchVal" value="">
                        <br>
                        <input type="submit" name="submit" value="Search">

                    </form>
                </div>
                <h1>Update A Customer Record</h1>
                
                <form class="box" name="updateForm" action="updateCustomer" method="post">

                    <table class="update">
                        <tr>
                            <td class="right">CustID:</td>
                            <td><input id="custid" type="text" name="custID" value="<%= customer.getCustID()%>" readonly/></td>
                        </tr>
                        <tr>
                            <td class="right">* First Name:</td>
                            <td><input type="text" name="firstname" value="<%= customer.getFirstName()%>" required/></td>
                            <td>(eg: Ann)</td>
                        </tr>
                        <tr>
                            <td class="right">* Last Name:</td>
                            <td><input type="text" name="lastname" value="<%= customer.getLastName()%>" required/></td>
                        </tr>
                        <tr>
                            <td class="right">* Addr1:</td>
                            <td><input type="text" name="addr1" value="<%= customer.getAddr1()%>" required/></td>
                        </tr>
                        <tr>
                            <td class="right">  Addr2:</td>
                            <td><input type="text" name="addr2" value="<%= customer.getAddr2()%>" /></td>
                        </tr>
                        <tr>
                            <td class="right">* City:</td>
                            <td><input type="text" name="city" value="<%= customer.getCity()%>" required/></td>
                        </tr>
                        <tr>
                            <td class="right">* State:</td>
                            <td>

                                <select name="state" required>

                                    <option value="<%= customer.getState()%>"><%= customer.getState()%></option>           
                                    <option value="AL">Alabama</option>
                                    <option value="AK">Alaska</option>
                                    <option value="AZ">Arizona</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="CA">California</option>
                                    <option value="CO">Colorado</option>
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="DC">District of Columbia</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="HI">Hawaii</option>
                                    <option value="ID">Idaho</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IN">Indiana</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NV">Nevada</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="OH">Ohio</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="OR">Oregon</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="TX">Texas</option>
                                    <option value="UT">Utah</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WA">Washington</option>
                                    <option value="WV">West Virginia</option>
                                    <option value="WI">Wisconsin</option>
                                    <option value="WY">Wyoming</option>
                                </select>

                            </td>
                        </tr>

                        <tr>
                            <td class="right">* Zip:</td>
                            <td><input type="text" name="zip" value="<%= customer.getZip()%>" required/></td>
                        </tr>
                        <tr>
                            <td class="right">* EmailAddr:</td>
                            <td><input type="text" name="emailAddr" value="<%= customer.getEmailAddr()%>" required/></td>
                        </tr>
                        <tr>
                            <td class="right">* Age</td>
                            <td><input type="text" name="age" value="<%= customer.getAge()%>" required/></td>
                        </tr>
                        <br>
                    </table>
                    <input type="submit" name="submit" value="Submit"/>
                    <input type="reset" name="clear" value="Clear" />


                </form>
                <br><br><br>


            </div>


            <%@ include file="includes/footer.jsp" %>

        </div>

    </body>
</html>
