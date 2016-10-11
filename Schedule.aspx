<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Schedule.aspx.cs" Inherits="Schedule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>我們的網頁</title>
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="jquery/jquery-3.1.1.min.js"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <style>
        * {
            font-family: '標楷體', 'Times New Roman';
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!--header-->
        <header>
            <!--Title-->
            <div class="jumbotron" style="margin-bottom: 0px; text-align: center;">
                <h1>奕先和雯珈的小窩</h1>
                <p>這裡是我們專屬的網頁喔~~</p>
            </div>

            <!--Nav-->
            <nav class="navbar navbar-default" style="font-size:20px; ">
                <!-- 選單表頭區塊 -->
                <div class="navbar-header">
                    <a href="Index.aspx" class="navbar-brand">奕<span class="glyphicon glyphicon-heart"></span>雯專區</a>
                    <!-- 按鈕 -->
                    <button type="button" class="navbar-toggle"
                        data-toggle="collapse" data-target="#mynav">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>

                <!-- 選單 -->
                <div id="mynav" class="navbar-collapse collapse">
                    <ul class="navbar-nav nav" >
                        <li>
                            <a href="Index.aspx">
                                <span class="glyphicon glyphicon-home"></span>
                                <span>首頁</span>
                            </a>
                        </li>
                        <li>
                            <a href="Schedule.aspx">
                                <span class="glyphicon glyphicon-heart"></span>
                                <span>近期行程</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="glyphicon glyphicon-picture"></span>
                                <span>相簿</span>
                            </a>
                        </li>
                        <li>
                            <a href="AboutOur.aspx">
                                <span class="glyphicon glyphicon-info-sign"></span>
                                <span>關於我們</span>
                            </a>
                        </li>
                    </ul>
                </div>

            </nav>
        </header>
       
        <!--content-->
        <div style="text-align: center;">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HoneyConnectionString %>" DeleteCommand="DELETE FROM [Schedule] WHERE [編號] = @original_編號 AND (([日期] = @original_日期) OR ([日期] IS NULL AND @original_日期 IS NULL)) AND (([說明] = @original_說明) OR ([說明] IS NULL AND @original_說明 IS NULL))" InsertCommand="INSERT INTO [Schedule] ([編號], [日期], [說明]) VALUES (@編號, @日期, @說明)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Schedule]" UpdateCommand="UPDATE [Schedule] SET [日期] = @日期, [說明] = @說明 WHERE [編號] = @original_編號 AND (([日期] = @original_日期) OR ([日期] IS NULL AND @original_日期 IS NULL)) AND (([說明] = @original_說明) OR ([說明] IS NULL AND @original_說明 IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_編號" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_日期" />
                    <asp:Parameter Name="original_說明" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="編號" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="日期" />
                    <asp:Parameter Name="說明" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="日期" />
                    <asp:Parameter Name="說明" Type="String" />
                    <asp:Parameter Name="original_編號" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_日期" />
                    <asp:Parameter Name="original_說明" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <div class="container">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84"
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="編號" DataSourceID="SqlDataSource1" Font-Size="28px" HorizontalAlign="Center" CellSpacing="2" >
                    <Columns>
                        <asp:BoundField DataField="編號" HeaderText="編號" ReadOnly="True" SortExpression="編號" ItemStyle-Width="4em">

                        </asp:BoundField>
                        <asp:BoundField DataField="日期" HeaderText="日期" SortExpression="日期" ItemStyle-Width="6em" DataFormatString="{0:d}">

                        </asp:BoundField>
                        <asp:BoundField DataField="內容" HeaderText="內容" SortExpression="內容" ItemStyle-Width="8em">

                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"/>
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Right" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"/>
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                
            </div>
        </div>
        <hr />
        <!--去過的地方-->
        <div class="container" style="text-align:center;">
            <div class="row">
                <div class="col-sm-6">
                    <div class="thumbnail">
                        <img src="images/242_200.JPG" />
                        <div class="caption">
                            <a href="#" class="btn btn-primary" role="button" style="font-size:24px;">台北</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="thumbnail">
                        <img src="images/242_200.JPG" />
                        <div class="caption">
                            <a href="#" class="btn btn-primary" role="button" style="font-size:24px;">桃園</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="thumbnail">
                        <img src="images/242_200.JPG" />
                        <div class="caption">
                            <a href="#" class="btn btn-primary" role="button" style="font-size:24px;">台中</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="thumbnail">
                        <img src="images/242_200.JPG" />
                        <div class="caption">
                            <a href="#" class="btn btn-primary" role="button" style="font-size:24px;">台南</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="thumbnail">
                        <img src="images/242_200.JPG" />
                        <div class="caption">
                            <a href="#" class="btn btn-primary" role="button" style="font-size:24px;">宜蘭</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="thumbnail">
                        <img src="images/242_200.JPG" />
                        <div class="caption">
                            <a href="#" class="btn btn-primary" role="button" style="font-size:24px;">花蓮</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr />
        <!--footer-->
        <footer class="footer" style="text-align: center;">
            <div class="container">
                奕<span class="glyphicon glyphicon-heart"></span>雯專區<br />
                Copyright  © 奕<span class="glyphicon glyphicon-heart" />雯專區. All rights reserved.
            </div>
        </footer>
    </form>
</body>
</html>
