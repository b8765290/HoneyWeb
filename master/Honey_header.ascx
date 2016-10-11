<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Honey_header.ascx.cs" Inherits="Honey_header" %>
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
    </style>
</head> 

<header>
            <!--Title-->
            <div class="jumbotron" style="margin-bottom: 0px; text-align: center;">
                <h1>奕先和雯珈的小窩</h1>
                <p>Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile-first projects on the web.</p>
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
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <span class="glyphicon glyphicon-info-sign"></span>
                                <span>關於我們</span>
           
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu" style="font-size:20px;">
                                <li>
                                    <a href="#">
                                        <span class="glyphicon glyphicon-user"></span>
                                        <span>奕先</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="glyphicon glyphicon-user"></span>
                                        <span>雯珈</span>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <!-- 分隔線 -->
                                <li>
                                    <a href="#">
                                        <span class="glyphicon glyphicon-globe"></span>
                                        <span>2人世界</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </nav>
        </header>