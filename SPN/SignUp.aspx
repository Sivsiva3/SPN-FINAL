<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="SPN.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" type="text/css">
    <title></title>
    <script>
        function validateForm() {

            var form = document.forms["signup1"];

            var nname = form["nname"].value;
            var pass = form["pass"].value;
            var cpass = form["cpass"].value;
            var check = form["check"].value;
            var sentForm = true;

            if (nname.length < 8) {
                document.getElementById('nn').style.visibility = 'visible';
                sentForm = false;
            }
            else {
                document.getElementById('nn').style.visibility = 'hidden';
            }
            if (pass.length < 8) {
                document.getElementById('p').style.visibility = 'visible';
                sentForm = false;
            }
            else {
                document.getElementById('p').style.visibility = 'hidden';
            }
            if (pass != cpass) {
                document.getElementById('cp').style.visibility = 'visible';
                sentForm = false;
            }
            else {
                document.getElementById('cp').style.visibility = 'hidden';
            }
            if (document.getElementById("check").checked == false) {
                document.getElementById('c').style.visibility = 'visible';
                sentForm = false;
            }
            else {
                document.getElementById('c').style.visibility = 'hidden';
            }
            return sentForm;

        }
    </script>
</head>
<body>
    <center>
        <img src="SPNSK3.png"/>
        <table width="33%">
            <tr>
                <td>
                    <center>
                    <h1>Welcome Dude</h1>
                        <div>
                            <p><%= message %></p>
                            <form id="signup1" action="SignUp.aspx" onsubmit="return validateForm();" runat="server">
                                <div>
                                    <div>
                                        <span>Username</span>
                                        <input name="nname" type="text" id="nname" placeholder="Username">
                                    </div>
                                </div>
                                <font id="nn">*Nickname isn't valiable.</font>
                                <br />
                                <div>
                                    <div>
                                        <span>Password</span>
                                        <input name="pass" type="password" id="pass" placeholder="Password">
                                    </div>
                                </div>
                                <font id="p">*Password isn't valiable.</font>
                                <br />
                                <div>
                                    <div>
                                        <span>Confirm Password</span>
                                        <input name="cpass" type="password" id="cpass" placeholder="Confirm Password">
                                    </div>
                                </div>
                                <font id="cp">*Confirm password.</font>
                                <br />
                                 <div>
                                    <div>
                                        <span>First Name</span>
                                        <input name="fname" type="text" id="fname" placeholder="First Name">
                                    </div>
                                </div>
                                <br />
                                 <div>
                                    <div>
                                        <span>Last Name</span>
                                        <input name="lname" type="text" id="lname" placeholder="Last Name">
                                    </div>
                                </div>
                                <br />
                                 <div>
                                    <div>
                                        <span>Email</span>
                                        <input name="email" type="text" id="email" placeholder="Email">
                                    </div>
                                </div>
                                <br />
                                 <div>
                                    <div>
                                        <span>Years Active</span>
                                        <input name="active" type="text" id="active" placeholder="Years Active">
                                    </div>
                                </div>
                                <br />
                                 <div>
                                    <div>
                                        <span>Phone Number</span>
                                        <input name="phone" type="text" id="phone" placeholder="Phone Number">
                                    </div>
                                </div>
                                <br />
                                 <label class="custom-control custom-checkbox">
                    <input type="checkbox" id="check" name="check" class="custom-control-input">
                    <span></span>
                    <span>I agree to the terms and conditions.</span>
                </label>
                                <br />
                <font id="c">*Read terms and conditions.</font>
                <br/>
                <br/>
                                <input type="submit" value="Submit" />
                                <br/>
                            </form>
                        </div>
                        <br/>
                    </center>
                </td>
            </tr>
    </center>
    </table>
</body>
</html>
