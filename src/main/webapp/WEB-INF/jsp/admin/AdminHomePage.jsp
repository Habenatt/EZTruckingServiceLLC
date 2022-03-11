<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:include page="../include/AdminHomeHeader.jsp" />

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>



<style>

    .sidebar {
        height: 100%;
        width: 0;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
        background-color: #111;
        overflow-x: hidden;
        transition: 0.5s;
        padding-top: 60px;
    }

    .sidebar a {
        padding: 8px 8px 8px 32px;
        text-decoration: none;
        font-size: 25px;
        color: #818181;
        display: block;
        transition: 0.3s;
    }

    .sidebar a:hover {
        color: #f1f1f1;
    }

    .sidebar .closebtn {
        position: absolute;
        top: 0;
        right: 25px;
        font-size: 36px;
        margin-left: 50px;
    }

    .openbtn {
        font-size: 20px;
        cursor: pointer;
        background-color: #333;
        color: white;
        padding: 10px 15px;
        border: none;
    }

    .openbtn:hover {
        background-color: #444;
    }

    #main {
        transition: margin-left .5s;
        padding: 16px;
    }

    /* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
    @media screen and (max-height: 450px) {
        .sidebar {padding-top: 15px;}
        .sidebar a {font-size: 18px;}
    }
</style>


<div id="mySidebar" class="sidebar">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>

<br><br><br>



    <form method="get" action="/admin/home" style="margin-left: 10%">


        <button type="submit">Clean</button>
    </form><br><br>

    <%--<div class="search-container" style="margin-left: 10%">
        <form method="get" action="/EZ-TruckingService/ListAllDriversByName">
            <input type="text" name="search" value="${search}" placeholder="Users..by FirstName">
            <button type="submit" ><i class="fa fa-search"></i></button>
        </form>

    </div><br><br>--%>


    <div class="search-container" style="margin-left: 10%">
        <form method="get" action="/EZ-TruckingService/ListAllDriversAndUsersByName">
            <input type="text" name="search" value="${search}" placeholder="Driver..by FirstName">
            <button type="submit" ><i class="fa fa-search"></i></button>
        </form>

    </div><br><br>


<%--       <a href="/EZ-TruckingService/ListAllEmployeesByName">About</a>--%>
    <form method="get" action="/EZ-TruckingService/ListAllDriversAndUsers" style="margin-left: 10%">

        <button type="submit">ListAllDrivers</button>
    </form><br><br>

    <form method="get" action="/EZ-TruckingService/ListAllEmployeesAndUsers" style="margin-left: 10%">

        <button type="submit">ListAllEmployees</button>
    </form><br>




    <%--<a href="#">Services</a>
    <a href="#">Clients</a>
    <a href="#">Contact</a>--%>
</div>
<style>
    h1 {
        text-align: center;
        text-transform: uppercase;
        color: #8a1920;
    }
</style>


<div id="main1">
<div class="container">

    <table class="table table-striped" >
<c:choose>
    <c:when test="${empty UserListKey }">
        <div class="collapse container" id="main1">

            <h1 style="font-size: 8rem; text-shadow: 3px 5px mediumaquamarine; font-weight: bold">Welcome Admin </h1>

        </div>

    </c:when>
</c:choose>




<c:if test="${employeeUserListKey.size() gt 0}">
    <h1 style="text-align: center"> <strong>All Employees Table</strong> </h1>
        <tr style="background-color: cornflowerblue">
            <td><b>Id</b></td>
            <td><b>Username</b></td>
            <td><b>Email</b></td>
            <td><b>First Name</b></td>
            <td><b>Last Name</b></td>
            <td><b>Telephone</b></td>
            <td><b>Edit</b></td>
        </tr>


        <c:forEach items="${employeeUserListKey}" var="user">

                <tr>
                    <td>${user.id}</td>
                    <td>${user.userName}</td>
                    <td>${user.email}</td>
                    <td>${user.first_name}</td>
                    <td>${user.last_name}</td>
                    <td>${user.phone}</td>
                    <td><b><a href="/EZ-TruckingService/registerEmployee?id=${user.id}">Edit</a> </b></td>
                </tr>

        </c:forEach>
</c:if>




<c:if test="${driverUserListKey.size() gt 0}">
    <h1 style="text-align: center"> <strong>All Drivers Table</strong> </h1>
    <tr style="background-color: sienna">
        <td><b>Id</b></td>
        <td><b>Username</b></td>
        <td><b>Email</b></td>
        <td><b>First Name</b></td>
        <td><b>Last Name</b></td>
        <td><b>Telephone</b></td>
        <td><b>Truck Number</b></td>
        <td><b>Trailer Number</b></td>
        <td><b>Edit</b></td>
    </tr>

        <c:forEach items="${driverUserListKey}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.email}</td>
                    <td>${user.first_name}</td>
                    <td>${user.last_name}</td>
                    <td>${user.phone}</td>
                    <td>${user.truck_number}</td>
                    <td>${user.trailer_number}</td>

                    <td><b><a href="/EZ-TruckingService/registerDriver?id=${user.id}">Edit</a> </b></td>
                </tr>

        </c:forEach>

</c:if>





    <c:if test="${driverUserListKeyByName.size() gt 0}">
            <h1 style="text-align: center"> <strong>Driver's Table result for <span style="color: blue">${search}</span>  </strong> </h1>
            <tr style="background-color: sienna">
                <td><b>Id</b></td>
                <td><b>Username</b></td>
                <td><b>Email</b></td>
                <td><b>First Name</b></td>
                <td><b>Last Name</b></td>
                <td><b>Telephone</b></td>
                <td><b>Truck Number</b></td>
                <td><b>Trailer Number</b></td>
                <td><b>Edit</b></td>
            </tr>

            <c:forEach items="${driverUserListKeyByName}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.email}</td>
                    <td>${user.first_name}</td>
                    <td>${user.last_name}</td>
                    <td>${user.phone}</td>
                    <td>${user.truck_number}</td>
                    <td>${user.trailer_number}</td>

                    <td><b><a href="/EZ-TruckingService/registerDriver?id=${user.id}">Edit</a> </b></td>
                </tr>

            </c:forEach>

        </c:if>

    </table>
</div>
</div>
<style>
    h1 {
        text-align: center;
        text-transform: uppercase;
        color: #8a1920;
    }
</style>

<div class="collapse container" id="main2">

    <h1 style="font-size: 8rem; text-shadow: 3px 5px mediumaquamarine; font-weight: bold">Welcome Admin </h1>

</div>



<script>
    function openNav() {
        document.getElementById("mySidebar").style.width = "250px";
        document.getElementById("main").style.marginLeft = "250px";
        document.getElementById("main1").style.marginLeft = "250px";
        document.getElementById("main2").style.marginLeft = "250px";
    }

    function closeNav() {
        document.getElementById("mySidebar").style.width = "0";
        document.getElementById("main").style.marginLeft= "0";
        document.getElementById("main1").style.marginLeft= "0";
        document.getElementById("main2").style.marginLeft= "0";
    }
</script>


















<%--div id="up" class="row navbar " >
    <div class="col-sm-1   ">
        <a href="#home1" >Home</a>
    </div>
    <div class="col-sm-1   ">
        <a href="#home"   >Service</a>
    </div>
    <div class="col-sm-2  ">
        <a href="#home" >About Us</a>
    </div>

    <div class=" col-sm-2 dropdown1" >
        <button class=" btn dropbtn">Drivers<i class="fa fa-caret-down"></i>    </button>
        <div class="dropdown-content">
            <a href="./views/Drivers.html">List All</a>
            <a href="./views/Truck_Driver_Page.html">By Name</a>
        </div>
    </div>

    <div class=" col-sm-2 dropdown1" >
        <button class=" btn dropbtn">Trucks<i class="fa fa-caret-down"></i>    </button>
        <div class="dropdown-content">
            <a href="./views/Drivers.html">List All</a>
            <a href="./views/Truck_Driver_Page.html">By Truck Number</a>
        </div>
    </div>




    <div  class="col-sm-3  ">

        <p style="margin-left: 160px;  color: #1c0457; font-size: 120%;">EZ Trucking Service LLC.</p>
    </div>


</div>




<div style="height: 500px">






    </div>



<div id="home" style="height: 600px; background-color: lightgray;">

    <strong style="margin-left: 100px; margin-top: 30px;">Our Services!!</strong>
    <p>
    <ul style="margin-left: 20px; margin-top: 10px;">
        <li>We take loads all over US States! and we provide after hour customer service!</li>
        <li>We use facoring company for billing process </li>
        <li>Our drivers are Solo and Team, you can choose whatever you want   </li>
        <li>All our drivers use Kep Trucking ELD  </li>

    </ul>

    <strong style="margin-left: 600px; margin-top: 30px;">About Us!!</strong>
    <p>


        <video  width="320" height="240" controls style="margin-left: 50px;" >
            <source src="../../pub/images/animated.mp4" type="video/mp4">
            <source src="movie.ogg" type="video/ogg">

        </video>


    <ul style="margin-left: 550px; margin-top: -240px;">
        <li>We work more than 5 years in this business!</li>
        <li>Our office is in Matthews NC!</li>
        <li> Welcome!!   </li>
    </ul>

    <img src="../../pub/images/eld.png" alt="" style=" float:right; margin-top: -200px; margin-right: 20px;">
    <strong style="float: right; margin-top: -150px; margin-right: 250px;">ALL OUR DRIVERS <br> USE ELD!! <br> KEP TRUCKING!!</strong>
    <strong style="margin-left: 1000px; margin-top: 30px;">Help!!</strong> <br>

    <!-- <img src="./images/truck_GIF.gif" style=" float:right; margin-top: 100px; margin-right: 20px;">
         -->
    <p>
    <ul style="margin-left: 950px; margin-top: 10px;">
        <li><a href="https://www.facebook.com/ez.trucking.14" target="_blank">facebook</a>
            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>

            </svg></li>
        <li><a href=" https://www.facebook.com/100055154146654/" target="_blank">Messanger</a>

            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-messenger" viewBox="0 0 16 16">
                <path d="M0 7.76C0 3.301 3.493 0 8 0s8 3.301 8 7.76-3.493 7.76-8 7.76c-.81 0-1.586-.107-2.316-.307a.639.639 0 0 0-.427.03l-1.588.702a.64.64 0 0 1-.898-.566l-.044-1.423a.639.639 0 0 0-.215-.456C.956 12.108 0 10.092 0 7.76zm5.546-1.459-2.35 3.728c-.225.358.214.761.551.506l2.525-1.916a.48.48 0 0 1 .578-.002l1.869 1.402a1.2 1.2 0 0 0 1.735-.32l2.35-3.728c.226-.358-.214-.761-.551-.506L9.728 7.381a.48.48 0 0 1-.578.002L7.281 5.98a1.2 1.2 0 0 0-1.735.32z"/>
            </svg></li>
        <li> We can provide you any help you want through facebook and Messanger!!   </li>
    </ul>
    </p>
    <strong style="margin-left: 500px; margin-top: -200px;">
        <a href="#up"> Scroll UP!</a></strong><br><br><br><br>
    <div style="margin-left: 700px; margin-top: -120px;" >
        <strong > <b><u > Service Types! </u></b></strong><br>
        <strong id="demo" ></strong>

    </div>

    <img src="../../pub/images/best_Truck1.jpg" style="position: absolute;  margin-left: 1000px; margin-top: -500px; border-radius:50px; ">

    <script>
        var cars = ["Dry Vans", "Bobtail", "53 Dry Vans", "Team", "Solo"];

        let text = "";
        for (let i = 0; i < cars.length; i++) {
            text += cars[i] + "<br>";
        }

        document.getElementById("demo").innerHTML = text;
    </script>


</div>





--%>







<jsp:include page="../include/footer.jsp" />

