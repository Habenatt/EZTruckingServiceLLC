<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:include page="../include/employeeHeader.jsp" />
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


    <form method="get" action="/employee" style="margin-left: 10%">

        <button type="submit">Clean</button>
    </form><br><br>

    <%--<div class="search-container" style="margin-left: 10%">
        <form method="get" action="/EZ-TruckingService/ListAllDriversByName">
            <input type="text" name="search" value="${search}" placeholder="Users..by FirstName">
            <button type="submit" ><i class="fa fa-search"></i></button>
        </form>

    </div><br><br>--%>


    <div class="search-container" style="margin-left: 10%">
        <form method="get" action="/EZ-TruckingService/ListAllDriversAndUsersByName2">
            <input type="text" name="search" value="${search}" placeholder="Driver..by FirstName">
            <button type="submit" ><i class="fa fa-search"></i></button>
        </form>

    </div><br><br>


    <%--       <a href="/EZ-TruckingService/ListAllEmployeesByName">About</a>--%>
    <form method="get" action="/EZ-TruckingService/ListAllDriversAndUsers2" style="margin-left: 10%">

        <button type="submit">ListAllDrivers</button>
    </form><br><br>

    <form method="get" action="/EZ-TruckingService/ListAllEmployeesAndUsers2" style="margin-left: 10%">

        <button type="submit">ListAllEmployees</button>
    </form><br>

    <div class=" dropdown1" style="margin-left: 10%">
        <button class="dropbtn  ">   More <i class="fa fa-caret-down"></i>    </button>
        <div class="dropdown-content">
            <a href="/views/Drivers">Our Drivers</a>
            <a href="/views/Truck_Driver_Page">Our Trucks</a>
        </div>
    </div>


    <%-- <a href="#">Services</a>
     <a href="#">Clients</a>
     <a href="#">Contact</a>--%>
</div>

<div id="main1">



    <div class="container">
        <table class="table table-striped" >


            <c:if test="${employeeUserListKey.size() gt 0}">
                <h1 style="text-align: center"> <strong>All Employees Table</strong> </h1>
                <tr style="background-color: cornflowerblue">
                    <td><b>Username</b></td>
                    <td><b>Email</b></td>
                    <td><b>First Name</b></td>
                    <td><b>Last Name</b></td>
                    <td><b>Telephone</b></td>
                </tr>


                <c:forEach items="${employeeUserListKey}" var="user">

                    <tr>
                        <td>${user.userName}</td>
                        <td>${user.email}</td>
                        <td>${user.first_name}</td>
                        <td>${user.last_name}</td>
                        <td>${user.phone}</td>

                            <%--                    <td>${user.address}</td>--%>
                    </tr>

                </c:forEach>
            </c:if>




            <c:if test="${driverUserListKey.size() gt 0}">
                <h1 style="text-align: center"> <strong>All Drivers Table</strong> </h1>
                <tr style="background-color: sienna">
                    <td><b>Username</b></td>
                    <td><b>Email</b></td>
                    <td><b>First Name</b></td>
                    <td><b>Last Name</b></td>
                    <td><b>Telephone</b></td>
                    <td><b>Truck Number</b></td>
                    <td><b>Trailer Number</b></td>
                </tr>

                <c:forEach items="${driverUserListKey}" var="user">
                    <tr>
                        <td>${user.username}</td>
                        <td>${user.email}</td>
                        <td>${user.first_name}</td>
                        <td>${user.last_name}</td>
                        <td>${user.phone}</td>
                        <td>${user.truck_number}</td>
                        <td>${user.trailer_number}</td>
                    </tr>

                </c:forEach>

            </c:if>




            <c:if test="${driverUserListKeyByName.size() gt 0}">
                <h1 style="text-align: center"> <strong>Driver's Table result for <span style="color: blue">${search}</span>  </strong> </h1>
                <tr style="background-color: sienna">
                    <td><b>Username</b></td>
                    <td><b>Email</b></td>
                    <td><b>First Name</b></td>
                    <td><b>Last Name</b></td>
                    <td><b>Telephone</b></td>
                    <td><b>Truck Number</b></td>
                    <td><b>Trailer Number</b></td>
                </tr>

                <c:forEach items="${driverUserListKeyByName}" var="user">
                    <tr>
                        <td>${user.username}</td>
                        <td>${user.email}</td>
                        <td>${user.first_name}</td>
                        <td>${user.last_name}</td>
                        <td>${user.phone}</td>
                        <td>${user.truck_number}</td>
                        <td>${user.trailer_number}</td>
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
        color: rgb(71, 92, 28)
    }
</style>
<h1 class="ml3" style="text-align: center; color: rgb(71, 92, 28);">
    <div class="col-sm-1   ">
        <FORM> <INPUT TYPE="button" VALUE="Back" onClick="history.go(-1)"> </FORM>
    </div></h1>

<h1 class="ml3" style="text-align: center; color: rgb(71, 92, 28); text-shadow: 3px 8px mediumaquamarine;">  ${adminListKey.firstName} </h1><br><br>
<div class="row">
    <div class="col-sm-4   ">
        <h1 class="ml3" style="text-align: center; color: rgb(71, 92, 28);">
            <FORM action="/EZ-TruckingService/ListAllUpdatesFromDrivers " >
                <button TYPE="submit"  style=" background-color: #1b476b; height: 200px; text-shadow: 3px 2px white; border-radius: 25px;  border-color: #3f3f4d; border-width: 6px; " >
                    Active Drivers</button>
            </FORM></h1>
    </div>
    <div class="col-sm-4   ">
        <h1 class="ml3" style="text-align: center; color: rgb(71, 92, 28);"> <FORM action="/EZ-TruckingService/ListAllTrucks " >
            <button TYPE="submit" style=" background-color: #1b476b; height: 200px; text-shadow: 3px 2px white; border-radius: 25px; border-color: #3f3f4d; border-width: 6px; " >
                List All Trucks</button>
        </FORM></h1>
    </div>

    <div class="col-sm-4   ">
        <h1 class="ml3" style="text-align: center; color: rgb(71, 92, 28);"> <FORM action="/EZ-TruckingService/broker2 " >
            <button TYPE="submit" style=" background-color: #1b476b; height: 200px; border-radius: 35px; text-shadow: 3px 2px white;  border-color: #3f3f4d; border-width: 6px;" >
                Looking Updates</button>
        </FORM></h1>
    </div>

    <div  class="container"  id="drivers">
        <table  class="fixed" border="5"  id="myTableData" style="text-align: center; margin-left: 30px;">



            <c:if test="${driverUpdateListKey.size() gt 0}">
                <h1 style="text-align: center"> <strong>Active drivers</strong> </h1>
                <col width="60px" />
                <col width="130px" />
                <col width="150px" />
                <col width="120px" />
                <col width="90px" />
                <col width="60px" />
                <col width="130px" />
                <col width="120px" />
                <tr align ="center" style="background-color: cadetblue; color: rgb(56, 9, 185); " >

                    <td><b>First Name</b></td>
                    <td><b>Last Name</b></td>
                    <td><b>Telephone</b></td>
                    <td><b>Email</b></td>
                    <td>Truck No</td>
                    <td>Trailer No</td>
                    <td>driver Location</td>
                    <td>looking_load</td>
                    <td>Delivery status</td>
                    <td><b>Delete</b></td>
                </tr>


                <c:set var="count" value="0" scope="page" />



                <c:forEach items="${driverUpdateListKey}" var="user">
                    <c:set var="count" value="${count + 1}" scope="page"/>

                    <tr>

                        <td>${user.first_name}</td>
                        <td>${user.last_name}</td>
                        <td>${user.phone}</td>
                        <td>${user.email}</td>
                        <td>${user.truck_number}</td>
                        <td>${user.trailer_number}</td>
                        <td>${user.driver_location}</td>
                        <td>${user.looking_load}</td>
                        <td>${user.delivery_status}</td>
                        <td><b><a href="/EZ-TruckingService/DeleteUpdate?id=${user.id}">Delete</a> </b></td>
                    </tr>

                </c:forEach>
            </c:if>





            <c:if test="${truckListKey.size() gt 0}">
                <h1 style="text-align: center"> <strong>All Registered Trucks</strong> </h1>
                <col width="60px" />
                <col width="130px" />
                <col width="150px" />
                <col width="120px" />
                <col width="90px" />
                <col width="60px" />
                <col width="130px" />
                <col width="120px" />
                <tr align ="center" style="background-color: cadetblue; color: rgb(56, 9, 185); " >

                    <td><b> Owner Name</b></td>
                    <td><b>Aaddress</b></td>
                    <td><b>Truck No</b></td>
                    <td><b>Trailer No</b></td>
                    <td>VIN No</td>
                    <td>Year</td>
                    <td>make</td>
                    <td><b>Delete</b></td>
                    <td><b>Delete</b></td>
                </tr>


                <c:forEach items="${truckListKey}" var="user">

                    <tr>

                        <td>${user.truckOwnerName}</td>
                        <td>${user.address}</td>
                        <td>${user.truckNumber}</td>
                        <td>${user.trailerNumber}</td>
                        <td>${user.VINNumber}</td>
                        <td>${user.year}</td>
                        <td>${user.make}</td>
                        <td><a href="/EZ-TruckingService/deleteTruck2?id=${user.id}"> <input type="button" value = "Delete" ></a></td>
                        <td><b><a href="/EZ-TruckingService/deleteTruck2?id=${user.id}">Delete</a> </b></td>
                    </tr>

                </c:forEach>
            </c:if>

            <c:if test="${contactListKey.size() gt 0}">
                <h1 style="text-align: center"> <strong>Broker Contacts</strong> </h1>
                <col width="60px" />
                <col width="130px" />
                <col width="150px" />
                <col width="120px" />
                <col width="90px" />

                <tr align ="center" style="background-color: cadetblue; color: rgb(56, 9, 185); " >
                    <td><b>Count</b></td>
                    <td><b>PO</b></td>
                    <td><b>Driver Name</b></td>
                    <td>pickup date</td>
                    <td>broker email</td>
                    <td><b>Delete</b></td>
                </tr>


                <c:set var="count" value="0" scope="page" />
                <c:forEach items="${contactListKey}" var="user">
                    <c:set var="count" value="${count + 1}" scope="page"/>

                    <tr>

                        <td>${user.PO}</td>
                        <td>${user.driverName}</td>
                        <td>${user.pickupDate}</td>
                        <td>${user.brokerEmail}</td>
                        <td><b><a href="/EZ-TruckingService/DeleteBroker2?id=${user.id}">Delete</a> </b></td>
                    </tr>

                </c:forEach>
            </c:if>


        </table>
        <br>
        <Br>
        <br>
        <br>

    </div>



    <%-- <div class=" col-sm-1 dropdown1"  >
         <button class="dropbtn  " style="margin-top: 15px; ">   More <i class="fa fa-caret-down"></i>    </button>
         <div class="dropdown-content">
             <a href="/admin/driver">Our Drivers</a>
             <a href="#">Loads on the Way</a>
             <a href="/admin/truck">Our Trucks</a>

         </div>
     </div>
 --%>


</div>



<script>
    function openNav() {
        document.getElementById("mySidebar").style.width = "250px";
        document.getElementById("main").style.marginLeft = "250px";
        document.getElementById("main1").style.marginLeft = "250px";
    }

    function closeNav() {
        document.getElementById("mySidebar").style.width = "0";
        document.getElementById("main").style.marginLeft= "0";
        document.getElementById("main1").style.marginLeft= "0";
    }
</script>



<jsp:include page="../include/footer.jsp" />

