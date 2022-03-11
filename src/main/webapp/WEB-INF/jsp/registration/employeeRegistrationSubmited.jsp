<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<jsp:include page="../include/registrationHeader.jsp" />
<div class="container">


<h1> successfully registered: </h1>
    <h3> review your application  </h3><br>


    <label style="width: 9%;"> <b>email:  </b> </label>  ${email} <br>
    <label style="width: 9%;"><b>userId :     </b> </label>${idu}<br>
    <label style="width: 9%;"><b>EmployeeId:   </b></label>${id}<br>
    <label style="width: 9%;"><b>First Name:   </b></label>${firstName}<br>
    <label style="width: 9%;"> <b>Last Name:   </b></label>${lastName}<br>
    <label style="width: 9%;"> <b>Username:    </b></label>${userName}<br>
    <label style="width: 9%;"> <b>Email:        </b></label>${email}<br>
    <label style="width: 9%;"><b>Telephone:   </b></label>${telephone}<br>
    <label style="width: 9%;"> <b>Address:   </b></label>${address}<br><br>


    <br>


    <a type="submit" class="btn btn-primary" role="button" onClick="history.go(-2)"> Done</a>


        <a type="submit" class="btn btn-primary" role="button"href="/EZ-TruckingService/registerEmployee?id=${id}">Edit</a> </b>
    <b><a class="btn btn-danger" role="button" href="/EZ-TruckingService/deleteUserEmployee?id=${id}">Delete</a></b>


    <a type="button" class="btn btn-primary" role="button"href="/home" >Home</a> </b><br>
    <br>


</div>

<div>
    <img src="../../../pub/images/home-iso.svg" style="margin-left:1000px; margin-top:-400px; height:600px;">
</div>

<jsp:include page="../include/footer.jsp" />
