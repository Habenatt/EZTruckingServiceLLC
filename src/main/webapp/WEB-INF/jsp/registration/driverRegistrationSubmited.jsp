<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<jsp:include page="../include/registrationHeader.jsp" />
<div class="container">

<strong>
    <h1 style="color: darkolivegreen"> successfully registered: </h1>
    <h3 style="color: darkolivegreen"> review your application  </h3><br>
</strong>

    <label style="width: 17%;"><b>email:  </b> </label>  ${email} <br>

        <label style="width: 17%;"><b>userId :     </b> </label>${idu}<br>
        <label style="width: 17%;"><b>EmployeeId:   </b></label>${id}<br>
        <label style="width: 17%;"><b>First Name:   </b></label>${firstName}<br>
        <label style="width: 17%;"><b>Last Name:   </b></label>${lastName}<br>
        <label style="width: 17%;"><b>Username:    </b></label>${userName}<br>
        <label style="width: 17%;"><b>Email:        </b></label>${email}<br>
        <label style="width: 17%;"><b>Telephone:   </b></label>${telephone}<br>
        <label style="width: 17%;"><b>Address:   </b></label>${address}<br>
        <label style="width: 17%;"><b>DOB:        </b></label>${DOB}<br>
        <label style="width: 17%;"><b>License Number:   </b></label>${licenseNo}<br>
        <label style="width: 17%;"><b> LicenseExpiration date:   </b></label>${licenseEx}<br>
        <label style="width: 17%;"><b>Truck No:   </b></label>${truckNo}<br>
        <label style="width: 17%;"><b>Trailer Number:   </b></label>${trailerNo}<br>


    <br>


    <a type="submit" class="btn btn-primary" role="button" onClick="history.go(-1)" style="margin-left: 10px; margin-right: 10px; color: white"> Done</a>
    <a type="submit" class="btn btn-primary" role="button"href="/EZ-TruckingService/registerDriver?id=${id}">Edit</a> </b>
    <b><a class="btn btn-danger" role="button" href="/EZ-TruckingService/deleteUserDriver?id=${id}">Delete</a></b>


    <a type="submit" class="btn btn-primary" role="button"href="/home">Home</a> </b>


</div>


<img src="../../../pub/images/01-Home-04.svg" style="margin-left: 900px; margin-top: -500px;">



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
