
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<jsp:include page="include/homeHeader.jsp" />




<%--<jsp:include page="../include/header.jsp">--%>
<div id="myCarousel" class="carousel slide container-fluid " data-ride="carousel" style="padding: 0; height: 35%; background: linear-gradient(to left, rgb(139, 124, 173), rgba(5, 167, 113, 0.5)); ">
    <!-- Indicators -->

    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div  class="carousel-inner">

        <div class="item active">
            <div class="container mt-5" >
                <div class="row"   >
                    <div class="col-sm-4">
                        <img  src="../../pub/images/eld.png" alt="ELD"   >
                    </div>
                    <div class="col-sm-4" >
                        <h2 ></h2>

                    </div>
                    <div  class="col-sm-3 ">
                        <img  src="../../pub/images/img.png" alt="img"   >
                    </div>
                </div>
            </div>
        </div>
        <div class="item ">
            <div class="container mt-5">
                <div class="row" >
                    <div class="col-sm-4">
                        <img  src="../../pub/images/best_Truck1.jpg" alt="ELD"  >
                    </div>
                    <div class="col-sm-4">
                        <h2 ></h2>

                    </div>
                    <div class="col-sm-4 ">
                        <img class='img-fluid w-100' src="../../pub/images/img_4.png" alt="ELD"  >
                    </div>
                </div>
            </div>
        </div>
        <div class="item ">
            <div class="container mt-5">
                <div class="row" >
                    <div class="col-sm-6">
                        <img  src="../../pub/images/truck_redC.jpg" alt="ELD"  >
                    </div>
                    <div class="col-sm-3">
                        <h2 ></h2>

                    </div>
                    <div class="col-sm-2">
                        <img  src="../../pub/images/truck_redC.jpg" alt="ELD"  >

                    </div>

                </div>
            </div>
        </div>
    </div>






    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
    </a>
</div><br>










<div id="home2" class="container" style=" /*background-image: url(https://1iigqhoti4p36kwwhmb4218s-wpengine.netdna-ssl.com/wp-content/uploads/2021/09/Group-9521-111.png);*/ margin-top: 9%;   height:1000px;  background-size: contain ;">

    <%--    <div class="container mt-5">--%>
    <div class="row" >

       <%-- <div class="col-sm-12 " style="height: 700px; background-color: white; margin-top: 4.6%; margin-left: 3.5%; border-radius: 10px;" >--%>

           <div class="col-sm-12 " style="height: 700px; background-image: url(../../pub/images/Capture.PNG); margin-top: 4.6%; margin-left: 3.1%; border-radius: 10px;" >

   <img src="../../pub/images/leg.PNG" style=" position: absolute; border-radius: 5px; align-items: center; margin-left: 30%;  top: 108%;
               transform: translateY(-50%);">

<style>


    .close {
        cursor: pointer;
        position: absolute;
        top: 90%;
        right: 0%;
        padding: 12px 16px;
        transform: translate(0%, -50%);
    }

    .close:hover {background: #bbb;}
</style>
                   <div class="col-sm-2  mt-2 ml-4"  >


                       <div>


        <h1 class="ml3" style="text-align: center; color: rgb(71, 92, 28);"> <button type="button"   class="btn btn-primary" data-toggle="collapse" data-target="#demo1" style="width: 160px;">Brokers</button></h1>
<c:choose>
    <c:when test="${brokerKey eq 'not valid data'}">
                           <span style="color: red">${brokerKey}<span class="close">&times;</span></span><br>
    </c:when>
</c:choose>

                           <c:choose>
                               <c:when test="${brokerKey eq 'We will contact you Soon! be safe'}">
                                   <span style="color: red">${brokerKey}<span class="close">&times;</span></span><br>
                               </c:when>
                           </c:choose>
                       </div>
                       <div id="demo1" class="collapse">


                           <nav style="color: black; font-size: 120%; width: 250px;">
                              <b> <lu ><br>
                                   <a href="#demo2" data-toggle="collapse" > <li>Looking for Truck</li></a><br>
                                   <a href="#demo3"data-toggle="collapse" > <li>LoadStatus</li></a><br>
                                   <a href="#demo4"data-toggle="collapse"><li>About Funding</li></a><br>
                                   <a href="#home" ><li>Contact Career </li></a><br>
                               </lu></b>
                           </nav>
                       </div>


                   </div>
                   <div class="col-sm-3 mt-2 ml-4"   >
                       <div id="demo2" class="collapse">
                           <h3>Load details</h3>
                           <form method="POST" action="">

                               <%--    <h1 style="color:red">${errorMessage}</h1>--%>
                               <input type="text" name="from"style="border-color: rgb(131, 6, 247);  border-width: 4px; margin-top: 10px; width: 145px" placeholder="from"/>
                                   <select name="deliveryStatus" id="delivery"  >
                                   <option value="NC">NC</option>
                                   <option value="TN">TN</option>
                               </select><br><br>
                               <input type="to" name="to"style="border-color: rgb(131, 6, 247);  border-width: 4px;  width: 145px"  placeholder="to"/>
                                   <select name="deliveryStatus" id="delivery"  >
                                       <option value="NC">NC</option>
                                       <option value="TN">TN</option>
                                   </select><br><br>
                               <input type="text" name="wheight" style="border-color: rgb(131, 6, 247);  border-width: 4px;  width: 145px"  placeholder="wheight"/><br><br>
                              <input type="date" name="pickupDate" style="border-color: rgb(131, 6, 247);  border-width: 4px;  width: 145px"  placeholder="pickup date & time"/><br><br>


                               Ready: <select name="deliveryStatus" id="delivery" style="border-color: rgb(131, 6, 247); background-color: rgb(15, 225, 240);  width: 60px " >

                               <option value="yes">Yes</option>
                               <option value="no">No</option>
                           </select>
                               <br><br>
                               Solo: <select name="lookingLoad" id="delivery" style="border-color: rgb(131, 6, 247); background-color: rgb(15, 225, 240);  width: 60px " >

                               <option value="yes">Yes</option>
                               <option value="no">No</option>
                           </select><br><br>



                               <input id="login1" type="submit" name="Login"  value="Submit" style="border-color: rgb(131, 6, 247); background-color: rgb(15, 225, 240);  width: 110px " />


                           </form>
                           <script>
                               var closebtns = document.getElementsByClassName("close");
                               var i;

                               for (i = 0; i < closebtns.length; i++) {
                                   closebtns[i].addEventListener("click", function() {
                                       this.parentElement.style.display = 'none';
                                   });
                               }
                           </script>

                       </div>
                   </div>
                   <div class="col-sm-3 mt-2 ml-2"   >
                       <div id="demo3" class="collapse">
                          <h3> Enter Load number</h3>
                           <form method="POST" action="/EZ-TruckingService/brokerSubmit">
                               <input type="text" name="PO"style="border-color: rgb(131, 6, 247);  border-width: 4px; margin-top: 10px; width: 145px" placeholder="Load Number or PO"/><big style="color: red; font-size: 32px;">*</big><br><br>
                               <input type="text" name="driverName"style="border-color: rgb(131, 6, 247);  border-width: 4px;  width: 145px"  placeholder="driver First name"/><br><br>
                               <input type="date"  name="pickupDate" style="border-color: rgb(131, 6, 247);  border-width: 4px;  width: 145px"  placeholder="pickup date"/><br><br>
                               <input type="text" name="brokerEmail"style="border-color: rgb(131, 6, 247);  border-width: 4px;  width: 145px"  placeholder="brocker E-mail"/><big style="color: red; font-size: 32px;">*</big><br><br>
                               <input  type="submit"   value="Submit" style="border-color: rgb(131, 6, 247); background-color: rgb(15, 225, 240);  width: 110px " />


                           </form>



                       </div>

                   </div>
                   <div class="col-sm-3 mt-2 ml-2"   >
                       <div id="demo4" class="collapse">
                           <h3> Enter load PO</h3>
                           <form method="POST" action="">

                               <%--    <h1 style="color:red">${errorMessage}</h1>--%>
                               <input type="text" name="POnumber"style="border-color: rgb(131, 6, 247);  border-width: 4px; margin-top: 10px; width: 145px" placeholder="PO Number"/><br><br>
                               <input type="text" name="date" style="border-color: rgb(131, 6, 247);  border-width: 4px;  width: 145px"  placeholder="fund date"/><br><br>

                               <input id="login1" type="submit" name="Login"  value="Submit" style="border-color: rgb(131, 6, 247); background-color: rgb(15, 225, 240);  width: 110px " />


                           </form>


                       </div>
                   </div>
               <div class="col-sm-4 mt-2" style="background-image: url(../../pub/images/truck_semi.jpg); border: 5px solid #555">
                   <h3>Drivers</h3>
                   <p>Our Drivers are experienced and dedicated drivers.</p>
                   <p>You can contact directly to them or to the carie at the time frieght </p>
               </div>
               <div class="col-sm-3 mt-2 ml-2" style="background-image: url(../../pub/images/truck_redC.jpg); border: 5px solid #555">
                   <h3>Saftey</h3>
                   <p>we care much about safety and  on time deliver delivery </p>
                   <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
               </div>
               <div class="col-sm-4 mt-2 ml-2" style="background-image: url(../../pub/images/truck_semi.jpg); border: 5px solid #555">
                   <h3>Factoring</h3>
                   <p>Our factoring company is RTS financial Service, LLc.</p>
                   <p>you can pay them or you can send us direct check in our address any time</p>
               </div>
               <div class="col-sm-3 mt-2 ml-2" style="background-image: url(../../pub/images/1.webp); border: 5px solid #555">
                   <h3>Insurance</h3>
                   <p>we have dedicated insurance companies for loads and trucks</p>
                   <p>if you want to have some information about our insurance, contact us  </p>
               </div>
               <div class="col-sm-4 mt-1 ml-2" style="background-image: url(../../pub/images/truck_semi.jpg); border: 5px solid #555">
                   <h3>Employees</h3>
                   <p>our Employees are ready to give servicess 24/7</p>
                   <p>please find our after hour and before hour contact information </p>
               </div>
               <div class="col-sm-3 mt-1 ml-2" style="background-image: url(../../pub/images/truck_redC.jpg); border: 5px solid #555">
                   <h3>Trucks</h3>
                   <p>Our trucks are Inspected yearly and any time between the year if needed</p>
                   <p>any failor to delivery because of truck will take care by our recovery trucks</p>
               </div>

           </div>
           <br>

    </div>
</div>



<div id="home" class="container-fluid mt-5" style=" background-color: lightgray";>
    <div class="row">
        <div class="col-sm-4">
            <h3><strong>Our Services!!</strong></h3>
            <p>
            <ul >
                <li>we take loads all over US! and we provide after our customer service!</li>
                <li>we use factoring company for billing process </li>
                <li> our drivers are Solo and Team, you can choose what ever you want   </li>
                <li>All our drivers use Kep Trucking ELD for </li>

            </ul>
        </div>
        <div class="col-sm-4">
            <h3><strong>About Us!!</strong></h3>
            <ul >
                <li>we work more than 5 years in this business!</li>
                <li>our office is in Matthews NC!</li>
                <li> well come!!   </li>
            </ul>
        </div>
        <div class="col-sm-4">
            <h3><strong>Help!!</strong></h3>
            <ul >
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
        </div>

        <div class="col-sm-4">
            <h3><strong>Contact!!</strong></h3>
            <ul >
                <li>Email: eztruckingservice@gmail.com!</li>
                <li>Telephone: 704 712-812!</li>
                <li> facebook: <a href="https://www.facebook.com/ez.trucking.14" target="_blank">facebook</a>
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                        <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>

                    </svg>   </li>
            </ul>
        </div>
        <div class="col-sm-4">
            <strong > <b><u > Service Types! </u></b></strong><br>
            <strong id="demo" >

            </strong>
            <strong >  <a href="#up" style="font-size: 200%; margin-left:33%; "> Scroll UP!</a></strong>

        </div>
        <div class="col-sm-4">

            <img src="../../pub/images/best_Truck1.jpg" style=" border-radius:50px; ">

        </div>
    </div>
</div>





<script>
    var cars = ["Dry Vans", "Bobtail", "53 Dry Vans", "Team", "Solo"];

    let text = "";
    for (let i = 0; i < cars.length; i++) {
        text += cars[i] + "<br>";
    }

    document.getElementById("demo").innerHTML = text;
</script>








<%--this div is for information only--%>

<div id="home" class="container-fl" style=" background-color: lightgray;">





</div>




<jsp:include page="include/footer.jsp" />