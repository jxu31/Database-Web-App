<%-- 
    Document   : updateForm
    Created on : Nov 23, 2015, 1:19:34 PM
    Author     : Jiawen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Customers"%>
<% Customers customer =(Customers) request.getAttribute("customer"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update A Customer</title>
    </head>
    <body>
       <h1>Update A Customer Record</h1>
        
        <form name="updateForm" action="updateCustomer" method="get">
           
            <table class="update">
                <tr>
                    <td class="right">CustID:</td>
                    <td><input type="text" name="custID" value="<%= customer.getCustID() %>" readonly/></td>
                </tr>
                <tr>
                    <td class="right">First Name:</td>
                    <td><input type="text" name="firstname" value="<%= customer.getFirstName() %>"/></td>
                </tr>
                <tr>
                    <td class="right">Last Name:</td>
                    <td><input type="text" name="lastname" value="<%= customer.getLastName() %>"/></td>
                </tr>
                <tr>
                    <td class="right">Addr1:</td>
                    <td><input type="text" name="addr1" value="<%= customer.getAddr1() %>"/></td>
                </tr>
                <tr>
                    <td class="right">Addr2:</td>
                    <td><input type="text" name="addr2" value="<%= customer.getAddr2() %>"/></td>
                </tr>
                <tr>
                    <td class="right">City:</td>
                    <td><input type="text" name="city" value="<%= customer.getCity() %>"/></td>
                </tr>
                <tr>
                    <td class="right">State:</td>
                    <td><input type="text" name="state" value="<%= customer.getState() %>"/></td>
                </tr>
                <tr>
                    <td class="right">Zip:</td>
                    <td><input type="text" name="zip" value="<%= customer.getZip() %>"/></td>
                </tr>
                <tr>
                    <td class="right">EmailAddr:</td>
                    <td><input type="text" name="emailAddr" value="<%= customer.getEmailAddr() %>"/></td>
                </tr>
                <tr>
                    <td class="right">Age</td>
                    <td><input type="text" name="age" value="<%= customer.getAge() %>"/></td>
                </tr>
            <br>
            </table>
            <input type="submit" name="submit" value="Submit"/>
            <input type="reset" name="clear" value="Clear" />
            
            
        </form>
    </body>
</html>
