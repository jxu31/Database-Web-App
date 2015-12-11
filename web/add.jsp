
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Customer</title>
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

            function test3(input3) {


                var data3 = document.getElementById(input3).value;

                if (letters.test(data3)) {

                    return true;
                }
                else {
                    document.getElementById(input3).value = '';
                    alert("Please enter valid Address (Only letter and Number)");
                    document.getElementById(input3).focus();
                    return false;
                }


            }

            function test4(input4) {
                var data4 = document.getElementById(input4).value;

                if (letters.test(data4)) {

                    return true;
                }
                else {
                    document.getElementById(input4).value = '';
                    alert("Please enter valid Address (Only letter and Number)");
                    document.getElementById(input4).focus();
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

            <div class="main">
                <div class="searchbox">
                    <form class="box" name="searchForm" action="search" method="post">
                        <input type="text" name="searchVal" value="">
                        <br>
                        <input type="submit" name="submit" value="Search">

                    </form>
                </div>

                <h1>Add A New Customer</h1>

                <p> * (Required Field)</p>


                <form class="box" name="addForm" action="addCustomer" method="post" >

                    <label>*First Name:</label>
                    <input type="text" id="input1" name="firstname" value="" placeholder="Anna" required  />
                    <br>
                    <label>*Last Name:</label>
                    <input type="text" id="input2" name="lastname" value="" placeholder="Brown" required>
                    <br>
                    <label>*Addr1: </label>
                    <input type="text" id="input3" name="addr1" value="" placeholder="7-10 Washington Dr." required>
                    <br>
                    <label> Addr2: </label>
                    <input type="text" id="input4" name="addr2" value="" placeholder="2nd Ave"  >
                    <br>
                    <label>*City: </label>
                    <input type="text" id="input5" name="city" value="" placeholder="Seattle" required>
                    <br>
                    <label>*State:</label><br>
                    <select name="state" required>
                        <option value="">Please choose a state</option>
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

                    <label>*Zip </label>
                    <input type="number" pattern="[0-9]" id="input6" name="zip" value="" placeholder="52246" required>
                    <br>
                    <label>*EmailAddr </label>
                    <input type="email"  name="emailAddr" value="" placeholder="nobody@mail.com" required>
                    <br>
                    <label>*Age </label>
                    <input type="number" pattern="[0-9]" min="0" max="200" name="age" value="" placeholder="25" required />

                    <br>

                    <input type="submit" name="submit" value="Submit" onclick= "test1('input1');
                            test2('input2');
                            test1('input3');
                            test1('input4');
                            test5('input5');
                            test6('input6');" />
                    <input type="reset" name="clear" value="Clear" />



                </form>
            </div>


            <%@ include file="includes/footer.jsp" %>

        </div>

    </body>
</html>
