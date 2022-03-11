<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<jsp:include page="../include/registrationHeader.jsp" />


<%--<div class="container">--%>


<div class="row" style=" /*background-image: url(../../../pub/images/truck_background.jpg);*/ margin-left: 5%; margin-top: 5%; margin-right: 5% " id="myform" >

    <strong>
    <div class="col-sm-7 m-3" style=" height: 700px; margin-left: 5%; display:inline-block; color: #1b476b; font-weight: bold; font-size: large ">

        <h2 style="text-align: center; margin-top: 5%">
            <c:choose>
                <c:when test="${empty formTruckKey.id}">
                    <h1>Registration form for Trucks</h1><br>
                </c:when>
                <c:otherwise>
                    <h1>Edit Truck</h1><br>
                </c:otherwise>
            </c:choose></h2>
        <form method="POST"  action="/EZ-TruckingService/registerTruckSubmit">
            <input type="hidden" name="id" value="${formTruckKey.id}">




            <label for="fname" style="width: 30%; display: inline-block; padding-left: 9px;" > <b>Owner Full name:</b></label>
            <input type="text" id="fname" name="truckOwnerName" value="${formTruckKey.truckOwnerName}" placeholder="Enter your Full name" style="border-color: rgb(131, 6, 247); border-width: 4px;"><br><br>

            <label for="address" style="width: 30%; display: inline-block; padding-left: 9px;">Address:</label>
            <input id="address" type="text" name="address"  value="${formTruckKey.address}" placeholder="Enter your Address" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /> <br><br>

            <label for="truckNo" style="width: 30%; display: inline-block; padding-left: 9px;">Truck No:</label>
            <input id="truckNo" type="number" name="truckNumber" size="20"  value="${formTruckKey.truckNumber}" placeholder="Truck Number" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /> <br><br>

            <label for="trailerNo" style="width: 30%; display: inline-block; padding-left: 9px;">Trailer number:  </label>
            <input id="trailerNo" type="number" size="20" name="trailerNumber" size="20" value="${formTruckKey.trailerNumber}" placeholder="Trailer Number" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /><br><br>

            <label for="vinNo" style="width: 30%; display: inline-block; padding-left: 9px;">VIN Number:</label>
            <input id="vinNo" type="number" name="VINNumber" size="20" value="${formTruckKey.VINNumber}" placeholder="VIN Number" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /> <br><br>


            <label for="make" style="width: 30%; display: inline-block; padding-left: 9px;" > <b>Make:</b></label>
            <input type="text" id="make" name="make" value="${formTruckKey.make}" placeholder="make" style="border-color: rgb(131, 6, 247); border-width: 4px;"><br><br>

            <label for="year" style="width: 30%; display: inline-block; padding-left: 9px;"><b>Year:</b></label>
            <input type="date" id="year" name="year" value="${formTruckKey.year}" placeholder="year" style="border-color: rgb(131, 6, 247); border-width: 4px;">  <small>Format: mm/dd/yyy!</small><br><br>



            <%-- <input id="add" type="submit" name="submit"  value="Register" /><br>--%>
            <c:if test="${empty formTruckKey.id}">
                <button type="submit" class="btn btn-primary" role="button" >Create</button>
                <a type="submit" class="btn btn-primary" role="button"href="/home">Home</a> </b>
            </c:if>

            <c:if test="${not empty formTruckKey.id}">
                <a type="submit" class="btn btn-primary" role="button" onClick="history.go(-1)" style="color: white"> Done</a>
                <button type="submit" class="btn btn-primary" role="button">Update</button>
                <a class="btn btn-danger" role="button" href="/EZ-TruckingService/deleteTruck?id=${formTruckKey.id}">Delete</a>
                <a type="submit" class="btn btn-primary" role="button"href="/home">Home</a> </b>
            </c:if>
        </form>
    </strong>
    </div>


<div class="container" style="color: red">

    <c:forEach  items="${formTruckKey.errorMessages}" var="message" varStatus="status">
        <span style="color: red">${message}</span><br>
    </c:forEach>
</div><br>





<jsp:include page="../include/footer.jsp" />
