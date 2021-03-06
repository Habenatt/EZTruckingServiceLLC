

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../pub/css/Home.css">
    <script type="text/javascript" src="../../pub/js/Home.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Home</title>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        .topnav {
            overflow: hidden;
            background-color: #333;


        }

        .topnav a {
            float: left;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 0px;
            text-decoration: none;
            font-size: 17px;
        }

        .topnav a:hover {
            background-color: #ddd;
            color: black;
            height: 90px;
        }

        /*.topnav a.active {
            background-color: #04AA6D;
            color: white;
            height: 70px;
        }*/

        .topnav a.active:hover {
            background-color: #d1d7d5;
            color: #111111;
        }
    </style>
</head>
<body>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- implement any html you need to show on every page as a header here -->



<div id="main" class="topnav"  >


    <div class="row"  >
        <div class="col-sm-1"  >
            <button class="openbtn " onclick="openNav()">???</button>

        </div>


        <div class="col-sm-3" style="float: left;">
            <a href="#" style="height: 70px;">EZ <br>TRUCKING SERVICE </a>
        </div>

        <td>
            <div class="col-sm-1"  >
                <a class="active" href="/home" ><i class="fa fa-home"></i> Home</a>
            </div>
        </td>



        <div class=" col-sm-1 dropdown1"  >
            <button class="dropbtn  " style="margin-top: 15px; ">   More <i class="fa fa-caret-down"></i>    </button>
            <div class="dropdown-content">
                <a href="/admin/driver">Our Drivers</a>
                <a href="#">Loads on the Way</a>
                <a href="/admin/truck">Our Trucks</a>

            </div>
        </div>



        <div class="col-sm-1 dropdown1" style="float: right; " >
            <a href="#"><span class="glyphicon glyphicon-user"></span> Registration <i class="fa fa-caret-down"></i></a>
            <div class="dropdown-content" >
                <a href="/EZ-TruckingService/registerDriver"><span class="glyphicon glyphicon-user"></span> Register Driver </a>

                <a href="/EZ-TruckingService/registerEmployee"><span class="glyphicon glyphicon-user"></span> Register Employee </a>
                <a href="/EZ-TruckingService/registerTruck" ><span class="glyphicon glyphicon-user" ></span> Register Truck </a>

            </div>
        </div>

        <div class="col-sm-1 dropdown1" >
            <a href="#">  Accounts <i class="fa fa-caret-down"></i></a>
            <div class="dropdown-content "  >
                <a href="/employee"><span class="glyphicon glyphicon-log-in"> </span> Employee Account </a>
                <a href="/driver"><span class="glyphicon glyphicon-log-in"> </span> Driver Account</a>


            </div>
        </div>
        <div class="col-sm-2 " >
        <a href="/login/logout">Logout <i class="bi bi-person"></i> <span style="color: cornflowerblue"> <sec:authentication property="principal.username" /></span></a>
        </div>
    </div>












</div>


<div style="padding-left:16px">



</div>





















