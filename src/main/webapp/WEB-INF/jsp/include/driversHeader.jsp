

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../pub/css/Drivers.css">
    <script type="text/javascript" src="../../pub/js/Drivers.js"></script>
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
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        .topnav a:hover {
            background-color: #ddd;
            color: black;
            height: 70px;
        }

        .topnav a.active {
            background-color: #04AA6D;
            color: white;
            height: 70px;
        }

        .topnav a.active:hover {
            background-color: #d1d7d5;
            color: #111111;
        }
    </style>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- implement any html you need to show on every page as a header here -->


<div id="up" class="topnav">
    <div class="flex-row-reverse" >



        <div class="col-sm-6" style="float: left;">
            <a href="#" style="height: 70px;">EZ <br>TRUCKING SERVICE </a>
        </div>

        <div class="col-sm-1" style="float: right; margin-right: 50px">

            <a href="/login/logout">Logout<i class="bi bi-person"></i> <span style="color: cornflowerblue"> <sec:authentication property="principal.username" /></span></a>

        </div>
        <div class="col-sm-1.5" style="float: right;" >
            <a href="/EZ-TruckingService/registerTruck" > Register Truck </a>
        </div>
        <div class="col-sm-1" style="float: right;" >
            <a  href="/home" ><i class="fa fa-home"></i> Home</a>
            <div class="col-sm-1" style="float: right;" >

    </div>





        </div>
        <div class="col-sm-0.7" style="float: right;">
            <a href="#home" >Help</a>
        </div>










    </div>
</div>

<div style="padding-left:16px">



</div>

















