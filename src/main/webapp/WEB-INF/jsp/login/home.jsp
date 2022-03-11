
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:include page="../include/homeHeader.jsp" />
<link rel="stylesheet" href="../../pub/css/Home.css">
<script type="text/javascript" src="../../pub/js/Home.js"></script>





<style>


    /* Styling the area of the slides */

    #slideshow {
        overflow: hidden;
        height: 510px;
        width: 728px;
        margin: 0 auto;
    }

    /* Style each of the sides
    with a fixed width and height */

    .slide {
        float: left;
        height: 510px;
        width: 728px;
    }


    .dot {
        height: 15px;
        width: 15px;
        margin: 0 2px;
        background-color: #bbb;
        border-radius: 50%;
        display: inline-block;
        transition: background-color 0.6s ease;
    }
    /* Add animation to the slides */

    .slide-wrapper {

        /* Calculate the total width on the
        basis of number of slides */
        width: calc(728px * 4);

        /* Specify the animation with the
        duration and speed */
        animation: slide 10s ease infinite;
    }

    /* Set the background color
    of each of the slides */

    .slide:nth-child(1) {
        background: green;
    }

    .slide:nth-child(2) {
        background: pink;
    }

    .slide:nth-child(3) {
        background: red;
    }

    .slide:nth-child(4) {
        background: yellow;
    }

    /* Define the animation
    for the slideshow */

    @keyframes slide {

        /* Calculate the margin-left for
        each of the slides */
        20% {
            margin-left: 0px;
        }
        40% {
            margin-left: calc(-728px * 1);
        }
        60% {
            margin-left: calc(-728px * 2);
        }
        80% {
            margin-left: calc(-728px * 3);
        }
    }
</style>

</style>

<div style="display: inline-block;">
<!-- Define the slideshow container -->
<div id="slideshow" style="width: 500px; height: 600px;  justify-content: center; display: inline-block;
       align-items: center;  border-radius:20px; margin-left: 200px ">
    <div class="slide-wrapper">

        <!-- Define each of the slides
     and write the content -->
        <div class="slide">
            <h1 class="slide-number">
               image one
            </h1>
        </div>
        <div class="slide">
            <h1 class="slide-number">
                image two
            </h1>
        </div>
        <div class="slide">
            <h1 class="slide-number">
                image three
            </h1>
        </div>
        <div class="slide">
            <h1 class="slide-number">
                image four
            </h1>
        </div>
    </div>
</div>
<!-- End of the slides-->



<%-- start of Login page div--%>
        <div id="home1" style="width: 500px; height: 500px;  justify-content: center; display: inline-block;
       align-items: center;  border-radius:20px; background-color: #C5A47E; margin-left: 500px; margin-top: -100px; ">
            <div name="butu" style="   width: 250px; height: 350px; background-color: gainsboro; border: 2px solid rgb(5, 157, 228);
             margin-top: 60px; margin-left: 120px; border-radius:20px; position: absolute; display: block" >
                <img src="../../pub/images/login2.png" style=" position: absolute; width:60px; height:60px; align-items: center; margin-left: 115px; top: 5px;
               right: 40%; transform: translateY(-50%);">
                <h2 style="margin-left: 65px; margin-top: 40px;">User Login</h2><br>

                <form action="/login/loginSecurityPost" method="post"  >

                    <input id="userName" type="text" name="userName"  style="border-color: rgb(131, 6, 247);  border-width: 4px; margin-left: 35px; width: 145px" placeholder="Enter Your User Name"/><br><br>
                     <input id="Pass" type="password" name="Password" style="border-color: rgb(131, 6, 247);  border-width: 4px; margin-left: 35px; width: 145px"  placeholder="Enter Your Password"/><br><br>



                    <input id="login" type="submit" name="Login"  value="LOGIN" style="border-color: rgb(131, 6, 247); background-color: rgb(15, 225, 240);  margin-left: 35px; width: 160px " />

                </form>

                <br>
                <p style="color:red; text-align: center; margin-top: -40px;"> <a href=""> Forgot Password </a>
                </p>
                <p style="color:red; text-align: center;"> <a href="views/RegistrationForm"> Create an Account </a>
                </p>


            </div>

            <img src="../../pub/images/careers.svg" style="position: absolute; margin-left: 420px;">


</div> <br>
<%-- End of Login page div--%>
</div>
<%--this div is for information only--%>
<hr>
<div id="home" style="height: 600px; background-color: lightgray; ">

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