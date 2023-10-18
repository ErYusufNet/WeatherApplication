<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web.aspx.cs" Inherits="WebApplication1.Web" %>

<!DOCTYPE html>
<html>
<head>
    <!-- <link rel="stylesheet" href="globals.css" /> -->
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="desktop">
            <div class="div">
                <div class="overlap">
                    <div class="dropdown-full">
                        <asp:DropDownList ID="CityDropDownList" runat="server" Width="100" Height="20">
                            <asp:ListItem Text="Select Location" Value="" />
                            <asp:ListItem Text="Helsinki" Value="Helsinki" />
                            <asp:ListItem Text="Lahti" Value="Lahti" />
                            <asp:ListItem Text="Lappeenranta" Value="Lappeenranta" />
                        </asp:DropDownList>
                    </div>
                    <div class="overlap-group">
                        <asp:Button ID="Button" runat="server" Text="GET FORECAST" OnClick="Button_Click" Height="50" Width="150" />
                    </div>
                </div>
                <div class="overlap-2">
                    <img class="img" src="./thermometer.png" />
                    <div class="temperature">
                        <div class="text-wrapper-2" id="temper">18</div>
                        <div class="text-wrapper-3">Temperature<br />(℃)</div>
                    </div>
                </div>
                <div class="overlap-group-2">
                    <img class="img" src="speed.png" />
                    <div class="wind-speed">
                        <div class="text-wrapper-2" id="wind">5</div>
                        <div class="text-wrapper-3">Wind Speed<br />(m/s)</div>
                    </div>
                </div>
                <div class="overlap-3">
                    <img class="img" src="temperature.png" />
                    <div class="feels-like">
                        <div class="text-wrapper-2" id="feel">14</div>
                        <div class="text-wrapper-3">Feels like<br />(℃)</div>
                    </div>
                </div>
                <div class="text-wrapper-4">Weather Today!</div>
            </div>
        </div>
    </form>
    <script src="./a.js"></script>
</body>
</html>
