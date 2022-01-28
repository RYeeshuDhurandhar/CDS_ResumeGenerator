<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="RG.WebForm1" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .container {
            width: 50vw;
            height: 70.71vw;
            padding: 1.2048vw 3.012vw;
        }

        .strip {
            margin: 0;
            width: 100%;
            height: 12pt;
            background-color: rgba(161, 159, 159, 0.555);
            margin: 0px;
            font-weight: bold;
        }

        .border2px {
            border: 2px solid black;
        }

        .educationTable {
            width: 100%;
        }

        .degree {
            width: 15%;
            height: 14pt;
        }

        .institution {
            width: 50%;
            height: 14pt;
        }

        .CPI {
            width: 10%;
            height: 14pt;
        }

        .year {
            width: 10%;
            height: 14pt;
            text-align: left;
        }

        .auto-style3 {
            width: 6%;
            height: 14pt;
            text-align: left;
        }

        .auto-style4 {
            width: 38%;
            height: 14pt;
            text-align: left;
        }

        .auto-style5 {
            width: 18%;
            height: 14pt;
            text-align: left;
        }
    </style>

</head>

<body>
    <form id="form1" runat="server">
        <div class="screen" style="border: thin solid #000000">
            <asp:Panel ID="Panel1" runat="server">
                <div class="container border2px">
                    <table style="width:100%">
                        <tr>
                            <td>
                                <asp:Label ID="name" runat="server" Font-Bold="True" Font-Size="14pt" Text=""> <%# myname %></asp:Label></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="program" runat="server" Text="" Font-Size="12pt"><%# myprogram %></asp:Label></td>
                            <td style="text-align:right;">
                                <asp:Label ID="email" runat="server" Text="" Font-Size="12pt"><%# myemail %></asp:Label></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="department" runat="server" Text="" Font-Size="12pt"><%# mydepartment %></asp:Label></td>
                            <td style="text-align:right;">
                                <asp:Label ID="phone" runat="server" Text="" Font-Size="12pt"><%# myphone %></asp:Label></td>
                        </tr>
                    </table>

                    <br />

                    <div class="strip">Education</div>

                    <table class="educationTable">
                        <thead>
                            <tr>
                                <th class="auto-style5">Degree</th>
                                <th class="auto-style4">Institution</th>
                                <th class="auto-style3">CPI/%</th>
                                <th class="year">Year</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td class="auto-style5">
                                    <asp:Label ID="degree1" runat="server" Text=""><%# mydegree1 %></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:Label ID="institution1" runat="server" Text=""><%# myinstitution1 %></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:Label ID="CPI1" runat="server" Text=""><%# myCPI1 %></asp:Label>
                                </td>
                                <td class="year">
                                    <asp:Label ID="year1" runat="server" Text=""><%# myyear1 %></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style5">
                                    <asp:Label ID="degree2" runat="server" Text="degree2"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:Label ID="institution2" runat="server" Text="institution2"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:Label ID="CPI2" runat="server" Text="CPI2"></asp:Label>
                                </td>
                                <td class="year">
                                    <asp:Label ID="year2" runat="server" Text="year2"></asp:Label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <br />

                    <div class="strip">Internship</div>
                    <ul>
                        <li>
                            <div style="width:100%;display:flex;">
                                <asp:Label ID="internships1heading" style="width:50%" runat="server" Text="Internships1heading" Font-Bold="True"></asp:Label>
                                <asp:Label class="timeInterval" style="width:50%;text-align:right" runat="server" Font-Bold="true" Text="[May-Jul'21]"></asp:Label>
                            </div>
                            <ul>
                                <li><asp:Label ID="internships1point1" runat="server" Text="internships1point1"></asp:Label></li>
                                <li><asp:Label ID="internships1point2" runat="server" Text="internships1point2"></asp:Label></li>
                                <li><asp:Label ID="internships1point3" runat="server" Text="internships1point3"></asp:Label></li>
                            </ul>
                        </li>
                    </ul>
                    
                    <br />

                    <div class="strip" id="ProjectsStrip" runat="server">Projects</div>
                    <div id="Project1" runat="server">
                        <ul>
                            <li>
                                <div style="width:100%;display:flex;">
                                    <asp:Label ID="project1heading" runat="server" style="width:50%;" Text="" Font-Bold="True"><%# myproject1heading %></asp:Label>
                                    <asp:Label class="timeInterval" style="width:50%;text-align:right" runat="server" Font-Bold="true" Text="[May-Jul'21]"></asp:Label>
                                </div>
                                <ul>
                                    <li><asp:Label ID="project1point1" runat="server" Text=""><%# myproject1point1 %></asp:Label></li>
                                    <li><asp:Label ID="project1point2" runat="server" Text=""><%# myproject1point2 %></asp:Label></li>
                                    <li><asp:Label ID="project1point3" runat="server" Text=""><%# myproject1point3 %></asp:Label></li>
                                    <li id="project1point4List" runat="server"><asp:Label ID="project1point4" runat="server" Text=""><%# myproject1point4 %></asp:Label></li>
                                </ul>
                                
                            </li>
                        </ul>
                    </div>



                    <div  runat="server" id="Project2">
                        <ul>
                            <li>
                                <div style="width:100%;display:flex;">
                                    <asp:Label ID="project2heading" runat="server" style="width:50%;" Text="" Font-Bold="True"><%# myproject2heading %></asp:Label>
                                    <asp:Label class="timeInterval" style="width:50%;text-align:right" runat="server" Font-Bold="true" Text="[May-Jul'21]"></asp:Label>
                                </div>
                                <ul>
                                    <li><asp:Label ID="myproject2point1" runat="server" Text=""><%# myproject2point1 %></asp:Label></li>
                                    <li><asp:Label ID="myproject2point2" runat="server" Text=""><%# myproject2point2 %></asp:Label></li>
                                    <li><asp:Label ID="myproject2point3" runat="server" Text=""><%# myproject2point3 %></asp:Label></li>
                                </ul>
                            </li>
                        </ul>
                    </div>

                    <br />

                    <div  runat="server" id="Project3">
                        <ul>
                            <li>
                                <div style="width:100%;display:flex;">
                                    <asp:Label ID="project3heading" runat="server" style="width:50%;" Text="" Font-Bold="True"><%# myproject3heading %></asp:Label>
                                    <asp:Label class="timeInterval" style="width:50%;text-align:right" runat="server" Font-Bold="true" Text="[May-Jul'21]"></asp:Label>
                                </div>
                                <ul>
                                    <li><asp:Label ID="myproject3point1" runat="server" Text=""><%# myproject3point1 %></asp:Label></li>
                                    <li><asp:Label ID="myproject3point2" runat="server" Text=""><%# myproject3point2 %></asp:Label></li>
                                    <li><asp:Label ID="myproject3point3" runat="server" Text=""><%# myproject3point3 %></asp:Label></li>
                                </ul>
                            </li>
                        </ul>
                    </div>

                    <div class="strip">Positions of Responsibility</div>
                    <ul>
                        <li>
                            <div style="width:100%;display:flex;">
                                <asp:Label ID="por1heading" style="width:50%;" runat="server" Text="por1heading" Font-Bold="True"></asp:Label>
                                <asp:Label class="timeInterval" style="width:50%;text-align:right" runat="server" Font-Bold="true" Text="[May-Jul'21]"></asp:Label>
                            </div>
                            <ul>
                                <li><asp:Label ID="por1point1" runat="server" Text="por1point1"></asp:Label></li>
                                <li><asp:Label ID="por1point2" runat="server" Text="por1point2"></asp:Label></li>
                                <li><asp:Label ID="por1point3" runat="server" Text="por1point3"></asp:Label></li>
                            </ul>
                        </li>
                    </ul>
                    <br />

                    <div class="strip">Achievements</div>
                    <ul>
                        <li>
                            <div style="width:100%;display:flex;">
                                <asp:Label ID="achievement1" style="width:50%;" runat="server" Text="achievement1"></asp:Label>
                                <asp:Label class="timeInterval" style="width:50%;text-align:right" runat="server" Font-Bold="true" Text="[May-Jul'21]"></asp:Label>
                            </div>
                        </li>
                    </ul>
                    <br />


                    <div class="strip">Skill Summary</div>
                    <ul>
                        <li>
                            <div style="width:100%;display:flex;">
                                <asp:Label ID="skill1heading" runat="server" style="width:17%;" Text="skill1heading:" Font-Bold="True"></asp:Label>
                                <asp:Label ID="skill1point1" runat="server" Text="skill1point1,"></asp:Label>
                                <asp:Label ID="skill1point2" runat="server" Text="skill1point2,"></asp:Label>
                                <asp:Label ID="skill1point3" runat="server" Text="skill1point3"></asp:Label>
                            </div>
                        </li>
                        <li>
                            <div style="width:100%;display:flex;">
                                <asp:Label ID="skill2heading" runat="server" style="width:17%;" Text="skill2heading: " Font-Bold="True"></asp:Label>
                                <asp:Label ID="skill2point1" runat="server" Text="skill2point1, "></asp:Label>
                                <asp:Label ID="skill2point2" runat="server" Text="skill2point2, "></asp:Label>
                                <asp:Label ID="skill2point3" runat="server" Text="skill2point3"></asp:Label>
                            </div>
                        </li>
                    </ul>
                    <br />


                    <div class="strip">Extra-Curricular Activities</div>
                    <ul>
                        <li><asp:Label ID="curricular1point1" runat="server" Text="curricular1point1"></asp:Label></li>
                        <li><asp:Label ID="curricular1point2" runat="server" Text="curricular1point2"></asp:Label></li>
                        <li><asp:Label ID="curricular1point3" runat="server" Text="curricular1point3"></asp:Label></li>
                    </ul>
                    <br />
                </div>
            </asp:Panel>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Fetch Data" OnClick="Button2_Click" />
            <asp:Button ID="Button1" runat="server" Text="Download pdf" OnClick="Button1_Click" />
        </div>


    </form>
</body>
</html>