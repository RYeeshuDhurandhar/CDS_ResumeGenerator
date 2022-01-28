// input form v1.0

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InputForm.aspx.cs" Inherits="RG.InputForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detail Fill</title>
    <style>
        #form1{
            width: 65%;
            display: flex;
            margin: auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 2px 2px 10px 1px #525252;
            margin-top: 15px;
            flex-direction: column;
        }
        .header{
            font-size: 3rem;
            padding: 5px;
            text-align: center;
        }
        #inputPanel{
            width: 100%;
            box-shadow: 2px 6px 19px 1px #a6a6a6;
            border-radius: 10px;
            padding: 12px;
        }
        .DataInp{
            padding: 6px;
            border-radius: 17px;
            display: flex;
            margin: auto;
            border: #7b7b7b 2px solid;
        }
        .DataInp:focus{
            border: 2px solid black;
        }
        #submit{
            background-color: #2abc2a;
            width: 10%;
            padding: 9px;
            border-radius: 20px;
            outline: none;
            border: none;
            color: white;
            font-size: 16px;
            margin: auto;
            margin-top: 20px;
        }
        #plusfield{
            width: 5%;
            margin: 10px;
            padding: 6px;
        }
        #submit:hover{
            background-color: #378f37;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">Education</div>
        <br />  
        <table id="inputPanel">
            <thead style="height:45px">
                <tr>    
                    <th><asp:Label ID="Degree" runat="server" Text="Degree" Font-Size="15pt"/></th>
                    <th><asp:Label ID="Institution" runat="server" Text="Institution" Font-Size="15pt"/></th>
                    <th><asp:Label ID="Label1" runat="server" Text="CPI/%" Font-Size="15pt"/></th>
                    <th><asp:Label ID="Year" runat="server" Text="Year" Font-Size="15pt"/></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="text" class="DataInp" id ="degree1" name="degree1"/></td>
                    <td><input type="text" class="DataInp" id ="institute1" name="institute1"/></td>
                    <td><input type="number" class="DataInp" id="cpi1" name="cpi1"/></td>
                    <td><input type="number" class="DataInp" id="year1" name ="year1"/></td>
                </tr>
                <tr>
                    <td><input type="text" class="DataInp" name="degree2"/></td>
                    <td><input type="text" class="DataInp" name="institute2"/></td>
                    <td><input type="number" class="DataInp" name="cpi2"/></td>
                    <td><input type="number" class="DataInp" name="year2"/></td>
                </tr>
                <tr>
                    <td><asp:TextBox runat="server" id="txtRollNo"></asp:TextBox></td>
                    <td><asp:TextBox runat="server" id ="txtTypeOfResume"></asp:TextBox></td>
                    <td><asp:TextBox runat="server" id="txtDegree3"></asp:TextBox></td>
                    <td><asp:TextBox runat="server" id="txtInstitute3"></asp:TextBox></td>
                    <td><asp:TextBox runat="server" id="txtCpi3"></asp:TextBox></td>
                    <td><asp:TextBox runat="server" id="txtYear3From"></asp:TextBox></td>
                    <td><asp:TextBox runat="server" ID="txtYear3To"></asp:TextBox></td>
                </tr>
                <tr>
                    <th colspan="4"><asp:Button OnClick="addField" Text="+" runat="server" id="plusfield"/></th>
                </tr>
            </tbody>
        </table>

        <asp:Button OnClick="submitClick" Text="Submit" runat="server" id="submit"/>
    </form>
</body>
</html>
