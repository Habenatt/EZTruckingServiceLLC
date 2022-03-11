<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<jsp:include page="../include/registrationHeader.jsp" />


<%--<div class="container">--%>
<div style="background: linear-gradient(to left, rgb(216, 235, 48), rgba(23, 65, 250, 0.5));">

        <div class="row" style="margin-left: 10%; margin-top: 5%; " id="myform">


            <div class="col-sm-7 m-3" style=" height: 900px; margin-left: 20%; display:inline-block; /*background-color: dimgrey;  border-radius:20px;   border: 2px solid rgb(4, 227, 235, 0.2);*/
         border-radius: 10px 10px 10px 10px; border: 1mm ridge rgb(170,50,220, .6); border-radius: 10%; ">

                <h2 style="text-align: center; margin-top: 5%">
                    <c:choose>
                    <c:when test="${empty formDriverKey.id}">
                        <h1 style="text-align: center; color: #1b476b">Register  Driver</h1><br>
                    </c:when>
                    <c:otherwise>
                        <h1 style="text-align: center; color: #1b476b">Edit Driver</h1><br>
                    </c:otherwise>
                </c:choose></h2>
    <form method="POST"  action="/EZ-TruckingService/registerDriverSubmit">
        <input type="hidden" name="id" value="${formDriverKey.id}">




        <label for="fname" style="width: 30%; display: inline-block; padding-left: 9px;" > <b>First name:</b></label>
        <input type="text" id="fname" name="firstName" value="${formDriverKey.firstName}" placeholder="Enter your First name" style="border-color: rgb(131, 6, 247); border-width: 4px;"><br><br>

        <label for="lname" style="width: 30%; display: inline-block; padding-left: 9px;" > <b>Last name:</b></label>
        <input type="text" id="lname" name="lastName" value="${formDriverKey.lastName}" placeholder="Enter your Last name" style="border-color: rgb(131, 6, 247); border-width: 4px;"><br><br>

        <label for="email" style="width: 30%; display: inline-block; padding-left: 9px;"><b>email:</b></label>
        <input type="text" id="email" name="email" value="${formDriverKey.email}" placeholder="Enter your email" style="border-color: rgb(131, 6, 247); border-width: 4px;"><br><br>

        <label for="uname" style="width: 30%; display: inline-block; padding-left: 9px;"  > <b>User name:</b></label>
        <input type="text" id="uname" name="userName" value="${formDriverKey.userName}" placeholder="Enter your User name" style="border-color: rgb(131, 6, 247); border-width: 4px;" ><br><br>

        <label for="phone" style="width: 30%; display: inline-block; padding-left: 9px;"><b>Telephone:</b></label>
        <input type="text" id="phone" name="telephone" value="${formDriverKey.telephone}" placeholder="Enter your Telephone Number" style="border-color: rgb(131, 6, 247); border-width: 4px;"><small>Format: 123-4567-6789</small><br><br>


        <label for="DOB" style="width: 30%; display: inline-block; padding-left: 9px;"><b>DOB:</b></label>
        <input type="date" id="DOB" name="DOB" value="${formDriverKey.DOB}" placeholder="Enter your DOB" style="border-color: rgb(131, 6, 247); border-width: 4px;"><small>Format: mm/dd/yyy!</small><br><br>



        <label for="licenceNo" style="width: 30%; display: inline-block; padding-left: 9px;">License No:</label>
        <input id="licenceNo" type="number" name="licenseNumber" size="20" value="${formDriverKey.licenseNumber}" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /> <br><br>

        <label for="licenseEx" style="width: 30%; display: inline-block; padding-left: 9px;">License Expiration date:  </label>
        <input id="licenseEx" type="date" min="2022-1-21" name="licenseExpire" size="20" value="${formDriverKey.licenseExpire}" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /><br><br>




        <label for="truckNo" style="width: 30%; display: inline-block; padding-left: 9px;">Truck No:</label>
        <input id="truckNo" type="number" name="truckNumber" size="20"  value="${formDriverKey.truckNumber}" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /> <br><br>

        <label for="trailerNo" style="width: 30%; display: inline-block; padding-left: 9px;">Trailer number:  </label>
        <input id="trailerNo" type="number" size="20" name="trailerNumber" size="20" value="${formDriverKey.trailerNumber}" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /><br><br>

        <label for="address" style="width: 30%; display: inline-block; padding-left: 9px;">Address:</label>
        <input id="address" type="text" name="address"  value="${formDriverKey.address}" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /> <br><br>





        <label for="pass" style="width: 30%; display: inline-block; padding-left: 9px;"><b>Password:</b></label>
        <input type="text" id="pass" name="password" value="${formDriverKey.password}" placeholder="Enter your Password" style="border-color: rgb(131, 6, 247); border-width: 4px;"><br><br>

        <label for="Cpass" style="width: 30%; display: inline-block; padding-left: 9px;"><b>Confirm Password:</b></label>
        <input type="text" id="Cpass" name="confirmPassword" value="${formDriverKey.confirmPassword}" placeholder="Confirm your Password" style="border-color: rgb(131, 6, 247); border-width: 4px;"><br><br>



        <%-- <input id="add" type="submit" name="submit"  value="Register" /><br>--%>
        <c:if test="${empty formDriverKey.id}">
            <a type="submit" class="btn btn-primary" role="button" onClick="history.go(-2)" style="color: white"> Done</a>
            <button type="submit" class="btn btn-primary" role="button" >Create</button>
            <a type="submit" class="btn btn-primary" role="button"href="/home">Home</a> </b>

        </c:if>

        <c:if test="${not empty formDriverKey.id}">
            <a type="submit" class="btn btn-primary" role="button" onClick="history.go(-1)" style="color: white"> Done</a>
            <button type="submit" class="btn btn-primary" role="button">Update</button>
            <a class="btn btn-danger" role="button" href="/EZ-TruckingService/deleteUserDriver?id=${formDriverKey.id}">Delete</a>
            <a type="submit" class="btn btn-primary" role="button"href="/home">Home</a> </b>
        </c:if>
    </form>
            </div>

</div>
<div class="container" style="color: red">
    <c:forEach  items="${formDriverKey.errorMessages}" var="message" varStatus="status">
        <span style="color: red">${message}</span><br>
    </c:forEach>
</div><br>


</div>


<jsp:include page="../include/footer.jsp" />
