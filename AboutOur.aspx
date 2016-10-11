<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutOur.aspx.cs" Inherits="AboutOur" %>

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
        font-family:'標楷體', 'Times New Roman';
        }
        hr {
        background-color:#f00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-xs-12">
                    <div class="col-sm-6 col-xs-12">
                        <img src="images/雯珈畢業照.png" class="img-thumbnail" width="200"/>
                    </div>
                    <div class="col-sm-6 col-xs-12">
                        <p style="font-size:24px;">
                            我是雯珈<br />
                            我是奕先的女朋友喔
                        </p>
                    </div>
                </div>
                <div class="col-md-6 col-xs-12">
                    <div class="col-sm-6 col-xs-12">
                        <img src="images/奕先.png" class="img-thumbnail" width="200"/>
                    </div>
                    <div class="col-sm-6 col-xs-12">
                        <p style="font-size:24px;">
                            我是奕先<br />
                            我是雯珈的男朋友喔
                        </p>
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
