<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<jsp:include page="../include/registrationHeader.jsp" />
<div class="container" style="background-image: url(../../../pub/images/truck_background.jpg); height: 500px; margin-top: 5% ">

<strong>
    <h1> successfully registered: </h1>
    <h3> review your application  </h3><br>


    <label style="width: 17%;"><b>Id:   </b></label>${id}<br>
    <label style="width: 17%;"><b>owner Full Name :     </b> </label>${ownerName}<br>
    <label style="width: 17%;"><b>Address:   </b></label>${address}<br>
    <label style="width: 17%;"><b>Truck No:   </b></label>${truckNo}<br>
    <label style="width: 17%;"><b>Trailer Number:   </b></label>${trailerNo}<br>
    <label style="width: 17%;"><b>Year:        </b></label>${year}<br>
    <label style="width: 17%;"><b>VIN Number:   </b></label>${vinNumber}<br>
    <label style="width: 17%;"><b>Make:   </b></label>${make}<br>



    <br>


    <a type="submit" class="btn btn-primary" role="button" onClick="history.go(-2)" style="margin-left: 10px; margin-right: 10px"> Done</a>
    <a type="submit" class="btn btn-primary" role="button"href="/EZ-TruckingService/registerTruck?id=${id}">Edit</a> </b>
    <b><a class="btn btn-danger" role="button" href="/EZ-TruckingService/deleteTruck?id=${id}">Delete</a></b>


    <a type="submit" class="btn btn-primary" role="button"href="/home">Home</a> </b>
</strong>

</div>




<%-- </h3>

<table border="1">
    <tr>
        <td><b>userId</b></td>
        <td><b>EmployeeId</b></td>
        <td><b>Username</b></td>
        <td><b>Email</b></td>
        <td><b>First Name</b></td>
        <td><b>Last Name</b></td>
        <td><b>Password</b></td>
        <td><b>Telephone</b></td>
        <td><b>Edit</b></td>
        <td><b>Delete</b></td>
    </tr>

        <tr>
            <td>${idu}</td>
            <td>${id}</td>
            <td>${userName}</td>
            <td>${email}</td>
            <td>${firstName}</td>
            <td>${lastName}</td>
            <td>${password}</td>
            <td>${telephone}</td>
            <td><b><a href="/EZ-TruckingService/registerEmployee?id=${id}">Edit</a> </b></td>
            <td><b><a href="/EZ-TruckingService/deleteUser?id=${id}">Delete</a> </b></td>

        </tr>

</table><br>
    <br>--%>







<jsp:include page="../include/footer.jsp" />
