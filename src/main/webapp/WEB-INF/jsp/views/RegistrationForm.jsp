<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:include page="../include/header.jsp" />

<div class="row navbar " >
    <div class="col-sm-1   ">
        <a href="../home.jsp" >Home</a>
    </div>
    <div class="col-sm-1   ">
        <a href="html" >Drivers</a>
    </div>
</div>


<h1 class="ml3" style="text-align: center; color: rgb(71, 92, 28);"> Registration Form</h1>

<form action="Success.html" style="margin-left: 100px; ">


    <br>
    <label for="FullName" style="width: 10%; display: inline-block; padding-left: 9px;">Full Name:</label>
    <input id="FullName" type="text" name="name" size="20" required style="border-color: rgb(131, 6, 247);  border-width: 4px;" pattern="[A-Z][a-z]+\s[A-Z'\-a-z]+" placeholder="Sam Tom"/><br><br>

    <label for="email" style="width: 10%; display: inline-block; padding-left: 9px;">Email:</label>
    <input id="email" type="email" name="email" size="20" style="border-color: rgb(131, 6, 247);  border-width: 4px;"  pattern=".+@gmail\.com" size="30" required placeholder="*@*.*" /><br><br>



    <label for="phone" style="width: 10%; display: inline-block; padding-left: 9px;">Telephone:</label>
    <input id="phone" type="tel" name="phone" size="20" style="border-color: rgb(131, 6, 247);  border-width: 4px;" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}"  required /> <small>Format: 123-4567-6789</small><br><br>


    <label for="dob" style="width: 10%; display: inline-block; padding-left: 9px;">DOB:  </label>
    <input id="dob" type="date" min="1970-11-30" max="2008-11-30" name="date" size="20" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /> <small>Format: mm/dd/yyy!</small><br><br>

    <label for="lic" style="width: 10%; display: inline-block; padding-left: 9px;">License No:</label>
    <input id="lic" type="number" name="lic" size="20" pattern="[0-9]{3}" style="border-color: rgb(131, 6, 247);  border-width: 4px;" pattern="[0-9]{3}" required /> <small>Format: 345 </small><br><br>

    <label for="licEx" style="width: 10%; display: inline-block; padding-left: 9px;">License Expiration date:  </label>
    <input id="licEx" type="date" min="2022-1-21" name="date" size="20" style="border-color: rgb(131, 6, 247);  border-width: 4px;" required /><br><br>

    <label for="qan" style="width: 10%; display: inline-block; padding-left: 9px;"><b> Experience(in Years):</b></label>
    <input id="qan" type="number" name="ocena" value="0" min="1" max="6" size="20" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /><small>From 1 to 6!</small><br><br>

    <label for="qan" style="width: 10%; display: inline-block; padding-left: 9px;"><b> Gender: </b> </label>
    <input type="radio" id="html" name="fav_language" value="HTML">
    <label for="html">Female</label>
    <input type="radio" id="html1" name="fav_language" value="HTML">
    <label for="html">Male</label><br>

    <label for="address" style="width: 10%; display: inline-block; padding-left: 9px;"> <b>Address:</b> </label>
    <input id="address" type="text" name="name" size="20" required style="border-color: rgb(131, 6, 247);  border-width: 4px;" placeholder="Address" /><br><br>


    <label for="state" style="width: 10%; display: inline-block; padding-left: 9px;"> <b>State:</b> </label>


    <select name="state" id="state" type="text" name="name"  required style="border-color: rgb(131, 6, 247);  border-width: 4px;">
        <optgroup label="US States">
            <option value="">Select your State [US satets]</option>
            <option value="AL">Alabama</option>
            <option value="AK">Alaska</option>
            <option value="AZ">Arizona</option>
            <option value="AR">Arkansas</option>
            <option value="CA">California</option>
            <option value="CO">Colorado</option>
            <option value="CT">Connecticut</option>
            <option value="DE">Delaware</option>
            <option value="DC">District Of Columbia</option>
            <option value="FL">Florida</option>
            <option value="GA">Georgia</option>
            <option value="HI">Hawaii</option>
            <option value="ID">Idaho</option>
            <option value="IL">Illinois</option>
            <option value="IN">Indiana</option>
            <option value="IA">Iowa</option>
            <option value="KS">Kansas</option>
            <option value="KY">Kentucky</option>
            <option value="LA">Louisiana</option>
            <option value="ME">Maine</option>
            <option value="MD">Maryland</option>
            <option value="MA">Massachusetts</option>
            <option value="MI">Michigan</option>
            <option value="MN">Minnesota</option>
            <option value="MS">Mississippi</option>
            <option value="MO">Missouri</option>
            <option value="MT">Montana</option>
            <option value="NE">Nebraska</option>
            <option value="NV">Nevada</option>
            <option value="NH">New Hampshire</option>
            <option value="NJ">New Jersey</option>
            <option value="NM">New Mexico</option>
            <option value="NY">New York</option>
            <option value="NC">North Carolina</option>
            <option value="ND">North Dakota</option>
            <option value="OH">Ohio</option>
            <option value="OK">Oklahoma</option>
            <option value="OR">Oregon</option>
            <option value="PA">Pennsylvania</option>
            <option value="RI">Rhode Island</option>
            <option value="SC">South Carolina</option>
            <option value="SD">South Dakota</option>
            <option value="TN">Tennessee</option>
            <option value="TX">Texas</option>
            <option value="UT">Utah</option>
            <option value="VT">Vermont</option>
            <option value="VA">Virginia</option>
            <option value="WA">Washington</option>
            <option value="WV">West Virginia</option>
            <option value="WI">Wisconsin</option>
            <option value="WY">Wyoming</option>
        </optgroup></select> <br><br>


    <label for="lic" style="width: 10%; display: inline-block; padding-left: 9px;"><b>Zip Code: </b> </label>
    <input id="lic2" type="number" name="lic" size="20" pattern="[0-9]{5}" style="border-color: rgb(131, 6, 247);  border-width: 4px;"  /> <small>Format: 34534 </small><br><br>


    <b>Preferred Drive Areas:</b>

    <input type="checkbox" id="area1" name="area1" value="Bike">
    <label for="area1"> Northeast</label>
    <input type="checkbox" id="area2" name="area1" value="Bike">
    <label for="area2"> Southwest</label>
    <input type="checkbox" id="area3" name="area1" value="Bike">
    <label for="area3"> West</label>
    <input type="checkbox" id="area4" name="area1" value="Bike">
    <label for="area4"> Southeast</label>
    <input type="checkbox" id="area5" name="area1" value="Bike">
    <label for="area5"> Midwest</label>


    <br> <br>
    <label for="messages"  style=" width: 10%; display: inline-block; padding-left: 9px; ">Any Other :</label><br>
    <textarea name="messages" id="messages" cols="50" rows="10" placeholder="Add Here if you have  More to tell: " style="border-color: rgb(131, 6, 247);  border-width: 4px;"></textarea><br/>


    <br><br><br>


    <input id="add" type="submit" name="submit"  value="Register" style=" margin-left:20px; border-color: darkslateblue;  padding-left: 20px; padding-right: 20px; align-content: center;  " /><br>

</form><br><br><br>



<script>


document.getElementById("button").onclick = function () {
    location.href = "file:///D:/haben%20Documents/PER%20SCHOLAS/CLASSES/week11/SBA/WEB_SBA/views/Success.html";
};
            </script>


<img src="../../../resources/static/images//01-Home-04.svg" style="margin-left: 650px; margin-top: -1300px;">


<jsp:include page="../include/footer.jsp" />