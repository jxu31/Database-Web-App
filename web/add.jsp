
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Customer</title>
    </head>
    <body>
        <h1>Add A New Customer</h1>
        
        <form name="addForm" action="addCustomer" method="get">
            
            <label>First Name:</label>
            <input type="text" name="firstname" value=""/>
            <br>
            <label>Last Name:</label>
            <input type="text" name="lastname" value=""/>
            <br>
            <label>Addr1: </label>
            <input type="text" name="addr1" value=""/>
            <br>
             <label>Addr2: </label>
            <input type="text" name="addr2" value=""/>
            <br>
             <label>City: </label>
            <input type="text" name="city" value=""/>
            <br>
             <label>State </label>
            <input type="text" name="state" value=""/>
            <br>
             <label>Zip </label>
            <input type="text" name="zip" value=""/>
            <br>
             <label>EmailAddr </label>
            <input type="text" name="emailAddr" value=""/>
            <br>
             <label>Age </label>
            <input type="text" name="age" value=""/>
            <br>
            
            <input type="submit" name="submit" value="Submit"/>
            <input type="reset" name="clear" value="Clear" />
            
            
            
        </form>
    </body>
</html>
