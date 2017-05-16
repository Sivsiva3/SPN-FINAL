<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="SPN.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" type="text/css">
</head>
<body>
    <div>
        <form id="SignIn" runat="server" onsubmit="true" action="SignIn.aspx">
            <center>
        <img src="SPNSK3.png"/>
        <table width="33%">
            <tr>
                <td>
                    <center>
                    <h1>Welcome Back</h1>
                        <div>
                            <form id="SignIn">
                                <div>
                                    <div>
                                        <span>Username</span>
                                        <input name="username" type="text" id="username" placeholder="Username">
                                    </div>
                                </div>
                                <br />
                                <div>
                                    <div>
                                        <span>Password</span>
                                        <input name="password" type="password" id="password" placeholder="Password">
                                    </div>
                                </div>
                                <br />
                                <input type="submit" value="Submit" />
                                <br/>
                                <br/>
                                Not Registered Yet? Sign Up <a class="nounderline" href="SignUp.aspx">Here.</a>
                            </form>
                        </div>
                        <br/>
                    </center>
                </td>
            </tr>
    </center>
    </table>
        </form>
    </div>
</body>
</html>
