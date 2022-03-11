<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<jsp:include page="../include/driversHeader.jsp" />

<style>


    .close {
        cursor: pointer;
        position: absolute;
        top: 2%;
        right: 0%;
        color: black;

        transform: translate(0%, -50%);
    }

    .close:hover {background: black;
    color: #c53829}
</style>
<strong>


<h1></h1>

<div class="row">
    <h1 class="ml3" style="text-align: center; color: rgb(71, 92, 28);">
        <div class="col-sm-1   ">
            <FORM> <INPUT TYPE="button" VALUE="Back" onClick="history.go(-1)"> </FORM>
        </div></h1>
    <div class="col-sm-1 mt-4" style="margin-left: 3%">


    <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo1">Update Location</button><br><br>
    <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo2">Register Driver</button><br><br>
    <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo3">Traffic & weather <br> Information</button>
      <a href="https://truckersedge.dat.com/search-loads" target="_blank">
     <h1>SearchLoads</h1>
      </a>
</div>
    <div class="col-sm-2  mt-4"  style="margin-left: 100px" >


    <div id="demo1" class="collapse">
        <form method="POST" action="/EZ-TruckingService/updateLocationSubmit">

            <%--    <h1 style="color:red">${errorMessage}</h1>--%>
           <%-- <input type="text" name="username"style="border-color: rgb(131, 6, 247);  border-width: 4px; margin-top: 10px; width: 145px" placeholder="Enter Your User Name"/><br><br>
            <input type="password" name="password"style="border-color: rgb(131, 6, 247);  border-width: 4px;  width: 145px"  placeholder="Enter Your Password"/><br><br>--%>
            <input type="text" name="driverLocation" style="border-color: rgb(131, 6, 247);  border-width: 4px;  width: 145px"  placeholder="Enter Your location"/><br><br>

            Deliverd: <select name="deliveryStatus" id="delivery" style="border-color: rgb(131, 6, 247); background-color: rgb(15, 225, 240);  width: 60px " >

            <option value="yes">Yes</option>
            <option value="no">No</option>
        </select>
            <br><br>
                Locking for a load: <select name="lookingLoad" id="delivery" style="border-color: rgb(131, 6, 247); background-color: rgb(15, 225, 240);  width: 60px " >

                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select><br><br>



            <input id="login1" type="submit" name="Login"  value="Submit" style="border-color: rgb(131, 6, 247); background-color: rgb(15, 225, 240);  width: 110px " />


        </form>

    </div>
        <div>
            <c:choose>
                <c:when test="${updateFormBeanKey3 eq 'Update us your location please!'}">
                    <span style="color: #8a1920">${updateFormBeanKey3}<span class="close" style=" margin-right: 30px; margin-top: 5px">&times;</span></span><br>
                </c:when>
            </c:choose>
            <c:choose>
                <c:when test="${updateFormBeanKey4 eq 'Thanks for the Update!!'}">
                    <span style="color: darkgreen">${updateFormBeanKey4}<span class="close"style=" margin-right: 100px;margin-top: 5px">&times;</span></span><br>
                </c:when>
            </c:choose>
        </div>

        <div class="ontainer" style="color: red">
            <c:forEach  items="${updateFormBeanKey.errorMessages}" var="message" varStatus="status">
                <%--<span style="color: red">${message}</span><br>--%>

            </c:forEach>
        </div><br>

</div>
    <script>
        var closebtns = document.getElementsByClassName("close");
        var i;

        for (i = 0; i < closebtns.length; i++) {
            closebtns[i].addEventListener("click", function() {
                this.parentElement.style.display = 'none';
            });
        }
    </script>
<div class="col-sm-5 mt-4 "   >


    <div id="demo2" class="collapse">
<%--        <div class="row" style="margin-left: 10%; margin-top: 5%; " id="myform">--%>


<%--            <div class="col-sm-7 m-3" style=" height: 1000px; margin-left: 20%; display:inline-block; background-color: dimgrey;  border-radius:20px;   border: 2px solid rgb(4, 227, 235, 0.2);--%>
<%--         border-radius: 10px 10px 10px 10px; border: 1mm ridge rgb(170,50,220, .6); border-radius: 10%; ">--%>

                <h2 style="text-align: center;">
                    <c:choose>
                        <c:when test="${empty formDriverKey.id}">
                            <h1>Registration form for Drivers</h1><br>
                        </c:when>
                        <c:otherwise>
                            <h1>Edit Driver</h1><br>
                        </c:otherwise>
                    </c:choose></h2>
                <form method="POST"  action="/EZ-TruckingService/registerDriverSubmit">
                    <input type="hidden" name="id" value="${formDriverKey.id}">




                    <label for="fname" style="width: 30%; display: inline-block; padding-left: 9px;" > <b>First name:</b></label>
                    <input type="text" id="fname" name="firstName" value="${formDriverKey.firstName}" placeholder="First name" style="border-color: rgb(131, 6, 247); border-width: 4px;"><br><br>

                    <label for="lname" style="width: 30%; display: inline-block; padding-left: 9px;" > <b>Last name:</b></label>
                    <input type="text" id="lname" name="lastName" value="${formDriverKey.lastName}" placeholder="Last name" style="border-color: rgb(131, 6, 247); border-width: 4px;"><br><br>

                    <label for="email" style="width: 30%; display: inline-block; padding-left: 9px;"><b>email:</b></label>
                    <input type="text" id="email" name="email" value="${formDriverKey.email}" placeholder="E-mail" style="border-color: rgb(131, 6, 247); border-width: 4px;"><br><br>

                    <label for="uname" style="width: 30%; display: inline-block; padding-left: 9px;"  > <b>User name:</b></label>
                    <input type="text" id="uname" name="userName" value="${formDriverKey.userName}" placeholder="User name" style="border-color: rgb(131, 6, 247); border-width: 4px;" ><br><br>

                    <label for="phone" style="width: 30%; display: inline-block; padding-left: 9px;"><b>Telephone:</b></label>
                    <input type="text" id="phone" name="telephone" value="${formDriverKey.telephone}" placeholder="Telephone" style="border-color: rgb(131, 6, 247); border-width: 4px;"><small>Format: 123-4567-6789</small><br><br>


                    <label for="DOB" style="width: 30%; display: inline-block; padding-left: 9px;"><b>DOB:</b></label>
                    <input type="date" id="DOB" name="DOB" value="${formDriverKey.DOB}" placeholder="DOB" style="border-color: rgb(131, 6, 247); border-width: 4px;"><small>Format: mm/dd/yyy!</small><br><br>



                    <label for="licenceNo" style="width: 30%; display: inline-block; padding-left: 9px;">License Number:</label>
                    <input id="licenceNo" type="number" name="licenseNumber" size="20" value="${formDriverKey.licenseNumber}" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /> <br><br>

                    <label for="licenseEx" style="width: 30%; display: inline-block; padding-left: 9px;">License Expiration date:  </label>
                    <input id="licenseEx" type="date" min="2022-1-21" name="licenseExpire" size="20" value="${formDriverKey.licenseExpire}" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /><br><br>




                    <label for="truckNo" style="width: 30%; display: inline-block; padding-left: 9px;">Truck Number:</label>
                    <input id="truckNo" type="number" name="truckNumber" size="20"  value="${formDriverKey.truckNumber}" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /> <br><br>

                    <label for="trailerNo" style="width: 30%; display: inline-block; padding-left: 9px;">Trailer number:  </label>
                    <input id="trailerNo" type="number" size="20" name="trailerNumber" size="20" value="${formDriverKey.trailerNumber}" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /><br><br>

                    <label for="address" style="width: 30%; display: inline-block; padding-left: 9px;">Address:</label>
                    <input id="address" type="text" name="address"  value="${formDriverKey.address}" placeholder="Address" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /> <br><br>





                    <label for="pass" style="width: 30%; display: inline-block; padding-left: 9px;"><b>Password:</b></label>
                    <input type="text" id="pass" name="password" value="${formDriverKey.password}" placeholder="Enter your Password" style="border-color: rgb(131, 6, 247); border-width: 4px;"><br><br>

                    <label for="Cpass" style="width: 30%; display: inline-block; padding-left: 9px;"><b>confirm Password:</b></label>
                    <input type="text" id="Cpass" name="confirmPassword" value="${formDriverKey.confirmPassword}" placeholder="Confirm your Password" style="border-color: rgb(131, 6, 247); border-width: 4px;"><br><br>



                    <%-- <input id="add" type="submit" name="submit"  value="Register" /><br>--%>
                    <c:if test="${empty formDriverKey.id}">
                        <button type="submit" class="btn btn-primary" role="button" >Submit</button>

                    </c:if>

                    <c:if test="${not empty formDriverKey.id}">
                        <a type="submit" class="btn btn-primary" role="button" onClick="history.go(-1)" style="color: white"> Done</a>
                        <button type="submit" class="btn btn-primary" role="button">Update</button>
                        <a class="btn btn-danger" role="button" href="/EZ-TruckingService/deleteUserDriver?id=${formDriverKey.id}">Delete</a>
                    </c:if>
                </form>
            </div>

        </div>
    <div class="col-sm-1 mt-4" style="margin-left: 10px">



        <div id="demo3" class="collapse"><br>
            <lu>
                <li>
                    <a href="https://weatherstreet.com/" target="_blanck" style="color: black"><strong><u>Weather</u> </strong> </a>
                </li><br>
                <li>
                    <a href="https://weatherstreet.com/states/u-s-snowfall-forecast.htm" target="_blank" style="color: black"><strong><u>Snow</u> </strong> </a>
                </li><br>
                <li>
                    <a href="https://www.wsoctv.com/traffic/index.html" target="_blank"style="color: black"><strong><u>Traffic</u> </strong> </a>
                </li>
            </lu>


        </div></div>

</div>


        <div class="container" style="color: red">
            <c:forEach  items="${formDriverKey.errorMessages}" var="message" varStatus="status">
                <span style="color: red">${message}</span><br>
            </c:forEach>
        </div><br>

</strong>


<div id="home" style="height: 600px; background-color: lightgray;">

    <strong style="margin-left: 100px; margin-top: 30px; ">Our Services!!</strong>
    <p>
    <ul style="margin-left: 20px; margin-top: 10px;">
        <li>we take loads all over US! and we provide after our customer service!</li>
        <li>we use facoring company for billing process </li>
        <li> our drivers are Solo and Team, you can choose what ever you want   </li>
        <li>All our drivers use Kep Trucking ELD for </li>

    </ul>

    <strong style="margin-left: 600px; margin-top: 30px;">About Us!!</strong>
    <p>


        <video  width="320" height="240" controls style="margin-left: 50px;" >
            <source src="../../pub/images/animated.mp4" type="video/mp4">
            <source src="movie.ogg" type="video/ogg">

        </video>


    <ul style="margin-left: 550px; margin-top: -240px;">
        <li>we work more than 5 years in this business!</li>
        <li>our office is in Matthews NC!</li>
        <li> well come!!   </li>
    </ul>

    <img src="../../pub/images/eld.png" alt="" style=" float:right; margin-top: -200px; margin-right: 20px;">
    <strong style="float: right; margin-top: -150px; margin-right: 250px;">ALL OUR DRIVERS <br> USE ELD!! <br> KEP TRUCKING!!</strong>
    <strong style="margin-left: 1000px; margin-top: 30px;">Help!!</strong> <br>


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
        <li> we can provide you any help you want through facebook and Messanger!!   </li>
    </ul>
    </p>
    <strong style="margin-left: 500px; margin-top: -200px;">
        <a href="#up"> Scroll UP!</a></strong><br><br><br><br>
    <div style="margin-left: 700px; margin-top: -120px;" >
        <strong > <b><u > Service Types! </u></b></strong><br>
        <strong id="demo" ></strong>

    </div>

</div>

<jsp:include page="../include/footer.jsp" />