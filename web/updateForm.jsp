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

        <script type="text/javascript">

            var letterOnly = /^[A-Za-z]+$/;
            var letters = /^[0-9a-zA-Z]+$/;

            function test1(input1) {

                var data1 = document.getElementById(input1).value;

                if (letterOnly.test(data1)) {

                    return true;
                }
                else {
                    document.getElementById(input1).value = '';
                    alert("Please enter valid First Name (Only letter)");
                    document.getElementById(input1).focus();
                    return false;
                }


            }

            function test2(input2) {

                var data2 = document.getElementById(input2).value;

                if (letterOnly.test(data2)) {

                    return true;
                }
                else {
                    document.getElementById(input2).value = '';
                    alert("Please enter valid Last Name (Only letter)");
                    document.getElementById(input2).focus();
                    return false;
                }


            }

            function test5(input5) {
                var data5 = document.getElementById(input5).value;

                if (letterOnly.test(data5)) {

                    return true;
                }
                else {
                    document.getElementById(input5).value = '';
                    alert("Please enter valid City Name ( Only letter)");
                    document.getElementById(input5).focus();
                    return false;
                }

            }

            function test6(input6) {

                var data6 = document.getElementById(input6).value;

                if (data6.length === 5) {

                    return true;
                } else {
                    document.getElementById(input6).value = '';
                    alert("Please enter valid zip code");
                    document.getElementById(input6).focus();
                    return false;
                }
            }




        </script>

    </head>
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
                
                <h1>Update A Customer Record</h1>

                <p> * (Required Field)</p>

                <form class="box" name="updateForm" action="updateCustomer" method="post">

                    <table class="update">
                        <tr>
                            <td class="right">CustID:</td>
                            <td><input id="custid" type="text" name="custID" value="<%= customer.getCustID()%>" readonly/></td>
                        </tr>
                        <tr>
                            <td class="right">* First Name:</td>
                            <td><input type="text" id="input1" name="firstname" value="<%= customer.getFirstName()%>"  placeholder="Anna" required/></td>
                        </tr>
                        <tr>
                            <td class="right">* Last Name:</td>
                            <td><input type="text" id="input2" name="lastname" value="<%= customer.getLastName()%>" placeholder="Brown" required/></td>
                        </tr>
                        <tr>
                            <td class="right">* Addr1:</td>
                            <td><input type="text" id="input3" name="addr1" value="<%= customer.getAddr1()%>" placeholder="7-10 Washington Dr." required/></td>
                        </tr>
                        <tr>
                            <td class="right">  Addr2:</td>
                            <td><input type="text" id="input4" name="addr2" value="<%= customer.getAddr2()%>" placeholder="2nd Ave" /></td>
                        </tr>
                        <tr>
                            <td class="right">* City:</td>
                            <td><input type="text" id="input5" name="city" value="<%= customer.getCity()%>" placeholder="Seattle" required/></td>
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
                            <td><input type="text" id="input6" name="zip" value="<%= customer.getZip()%>" placeholder="52246" required/></td>
                        </tr>
                        <tr>
                            <td class="right">* EmailAddr:</td>
                            <td><input type="text" name="emailAddr" value="<%= customer.getEmailAddr()%>" placeholder="nobody@mail.com" required/></td>
                        </tr>
                        <tr>
                            <td class="right">* Age</td>
                            <td><input type="text" name="age" value="<%= customer.getAge()%>" placeholder="25" required/></td>
                        </tr>
                        <br>
                    </table>
                    <input type="submit" name="submit" value="Submit" onclick= "test1('input1');
                            test2('input2');
                            test5('input5');
                            test6('input6');" />

                    <input type="reset" name="clear" value="Clear" />


                </form>
                <br><br><br>


            </div>


            <%@ include file="includes/footer.jsp" %>

        </div>

    </body>
</html>
