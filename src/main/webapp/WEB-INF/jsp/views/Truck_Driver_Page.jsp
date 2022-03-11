<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:include page="../include/registrationHeader.jsp" />

<%--<div class="row navbar " >
    <div class="col-sm-1   ">
        <a href="/home" >Home</a>
    </div>

    <div class="col-sm-1" >
        <a href="html"  >Drivers</a>
    </div>

    <div class="col-sm-2   " >
        <img src="../../../pub/images/truck.jfif" style="border-radius: 20px ;"><br>

        <strong style="margin-left: 20px;">EZ TRUCKING SERVICE LLC.</strong>

    </div>
</div>--%>


<h1 class="ml3" style="text-align: center; color: rgb(71, 92, 28);"> Trucks and their Drivers
    <div class="col-sm-1   ">
        <FORM> <INPUT TYPE="button" VALUE="Back" onClick="history.go(-1)"> </FORM>
    </div></h1>

<div class="container" >


    <h3 style="color: rgb(56, 9, 185); text-align: center; "></h3>
    <table  class="fixed" border="5"  id="myTableData" style="text-align: center; margin-left: 80px;">

        <col width="60px" />
        <col width="180px" />
        <col width="180px" />
        <col width="170px" />
        <col width="70px" />
        <col width="120px" />
        <col width="120px" />
        <col width="120px" />
        <col width="120px" />
        <col width="150px" />


        <tr align ="center" style="background-color: cadetblue; color: rgb(56, 9, 185); " ><br>
            <td>&nbsp;</td>
            <td > Driver  Name</td>
            <td >Driver EMail</td>
            <td>Telephone</td>
            <td>Truck Number</td>
            <td>Trailer Number</td>
            <td>Truck Year</td>
            <td>Trailer Year</td>
            <td>Current Location</td>
            <td>Availablity</td>

        </br>


        </tr>


        <tr>
            <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
            <td>Tom Sam </td>
            <td>habenaat@gmail.com</td>
            <td>754 247-3827</td>
            <td>113</td>
            <td>345</td>
            <td>01/28/2023</td>
            <td>01/28/2023</td>
            <td>charlotte</td>
            <td>
                <input type="radio" id="html" name="fav_language1" value="HTML">
                <label for="html">Yes</label>
                <input type="radio" id="css" name="fav_language1" value="CSS">
                <label for="css">No</label><br></td>
        </tr>
        <tr>
            <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
            <td>Tom Sam </td>
            <td>habenaat@gmail.com</td>
            <td>754 247-3827</td>
            <td>113</td>
            <td>345</td>
            <td>01/28/2023</td>
            <td>01/28/2023</td>
            <td>charlotte</td>
            <td>
                <input type="radio" id="html1" name="fav_language2" value="HTML">
                <label for="html">Yes</label>
                <input type="radio" id="css1" name="fav_language2" value="CSS">
                <label for="css">No</label><br></td>
        </tr>
        <tr>

            <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
            <td>Tom Sam </td>
            <td>habenaat@gmail.com</td>
            <td>754 247-3827</td>
            <td>113</td>
            <td>345</td>
            <td>01/28/2023</td>
            <td>01/28/2023</td>
            <td>charlotte</td>
            <td>
                <input type="radio" id="html2" name="fav_language3" value="HTML">
                <label for="html">Yes</label>
                <input type="radio" id="css2" name="fav_language3" value="CSS">
                <label for="css">No</label><br></td>
        </tr>

        <tr>
            <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
            <td>Tom Sam </td>
            <td>habenaat@gmail.com</td>
            <td>754 247-3827</td>
            <td>113</td>
            <td>345</td>
            <td>01/28/2023</td>
            <td>01/28/2023</td>
            <td>charlotte</td>
            <td>
                <input type="radio" id="html3" name="fav_language4" value="HTML">
                <label for="html">Yes</label>
                <input type="radio" id="css3" name="fav_language4" value="CSS">
                <label for="css">No</label><br></td>
        </tr>
        <tr>
            <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
            <td>Tom Sam </td>
            <td>habenaat@gmail.com</td>
            <td>754 247-3827</td>
            <td>113</td>
            <td>345</td>
            <td>01/28/2023</td>
            <td>01/28/2023</td>
            <td>charlotte</td>
            <td>
                <input type="radio" id="html4" name="fav_language5" value="HTML">
                <label for="html">Yes</label>
                <input type="radio" id="css4" name="fav_language5" value="CSS">
                <label for="css">No</label><br></td>
        </tr>
        <tr>

            <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
            <td>Tom Sam </td>
            <td>habenaat@gmail.com</td>
            <td>754 247-3827</td>
            <td>113</td>
            <td>345</td>
            <td>01/28/2023</td>
            <td>01/28/2023</td>
            <td>charlotte</td>
            <td>
                <input type="radio" id="html5" name="fav_language6" value="HTML">
                <label for="html">Yes</label>
                <input type="radio" id="css5" name="fav_language6" value="CSS">
                <label for="css">No</label><br></td>
        </tr>

        <tr>

            <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
            <td>Tom Sam </td>
            <td>habenaat@gmail.com</td>
            <td>754 247-3827</td>
            <td>113</td>
            <td>345</td>
            <td>01/28/2023</td>
            <td>01/28/2023</td>
            <td>charlotte</td>
            <td>
                <input type="radio" id="html6" name="fav_language7" value="HTML">
                <label for="html">Yes</label>
                <input type="radio" id="css6" name="fav_language7" value="CSS">
                <label for="css">No</label><br></td>
        </tr>

        <tr>

            <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
            <td>Tom Sam </td>
            <td>habenaat@gmail.com</td>
            <td>754 247-3827</td>
            <td>113</td>
            <td>345</td>
            <td>01/28/2023</td>
            <td>01/28/2023</td>
            <td>charlotte</td>
            <td>
                <input type="radio" id="html7" name="fav_language8" value="HTML">
                <label for="html">Yes</label>
                <input type="radio" id="css7" name="fav_language8" value="CSS">
                <label for="css">No</label><br></td>
        </tr>

        <tr>

            <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
            <td>Tom Sam </td>
            <td>habenaat@gmail.com</td>
            <td>754 247-3827</td>
            <td>113</td>
            <td>345</td>
            <td>01/28/2023</td>
            <td>01/28/2023</td>
            <td>charlotte</td>
            <td>
                <input type="radio" id="html8" name="fav_language9" value="HTML">
                <label for="html">Yes</label>
                <input type="radio" id="css8" name="fav_language9" value="CSS">
                <label for="css">No</label><br></td>
        </tr>

        <tr>

            <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
            <td>Tom Sam </td>
            <td>habenaat@gmail.com</td>
            <td>754 247-3827</td>
            <td>113</td>
            <td>345</td>
            <td>01/28/2023</td>
            <td>01/28/2023</td>
            <td>charlotte</td>
            <td>
                <input type="radio" id="html9" name="fav_language10" value="HTML" >
                <label for="html">Yes</label>
                <input type="radio" id="css9" name="fav_language10" value="CSS">
                <label for="css">No</label><br></td>
        </tr>

        <tr>

            <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
            <td>Tom Sam </td>
            <td>habenaat@gmail.com</td>
            <td>754 247-3827</td>
            <td>113</td>
            <td>345</td>
            <td>01/28/2023</td>
            <td>01/28/2023</td>
            <td>charlotte</td>
            <td>
                <input type="radio" id="html10" name="fav_language11" value="HTML" >
                <label for="html">Yes</label>
                <input type="radio" id="css10" name="fav_language11" value="CSS">
                <label for="css">No</label><br></td>
        </tr>

        <tr>

            <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
            <td>Tom Sam </td>
            <td>habenaat@gmail.com</td>
            <td>754 247-3827</td>
            <td>113</td>
            <td>345</td>
            <td>01/28/2023</td>
            <td>01/28/2023</td>
            <td>charlotte</td>
            <td>
                <input type="radio" id="html11" name="fav_language12" value="HTML" >
                <label for="html">Yes</label>
                <input type="radio" id="css11" name="fav_language12" value="CSS">
                <label for="css">No</label><br></td>
        </tr>

        <tr>

            <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
            <td>Tom Sam </td>
            <td>habenaat@gmail.com</td>
            <td>754 247-3827</td>
            <td>113</td>
            <td>345</td>
            <td>01/28/2023</td>
            <td>01/28/2023</td>
            <td>charlotte</td>
            <td>
                <input type="radio" id="html12" name="fav_language13" value="HTML" >
                <label for="html">Yes</label>
                <input type="radio" id="css12" name="fav_language13" value="CSS">
                <label for="css">No</label><br></td>
        </tr>

        <tr>

            <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
            <td>Tom Sam </td>
            <td>habenaat@gmail.com</td>
            <td>754 247-3827</td>
            <td>113</td>
            <td>345</td>
            <td>01/28/2023</td>
            <td>01/28/2023</td>
            <td>charlotte</td>
            <td>
                <input type="radio" id="html13" name="fav_language14" value="HTML" >
                <label for="html">Yes</label>
                <input type="radio" id="css13" name="fav_language14" value="CSS">
                <label for="css">No</label><br></td>
        </tr>

        <tr>

            <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
            <td>Tom Sam </td>
            <td>habenaat@gmail.com</td>
            <td>754 247-3827</td>
            <td>113</td>
            <td>345</td>
            <td>01/28/2023</td>
            <td>01/28/2023</td>
            <td>charlotte</td>
            <td>
                <input type="radio" id="html14" name="fav_language15" value="HTML" >
                <label for="html">Yes</label>
                <input type="radio" id="css14" name="fav_language15" value="CSS">
                <label for="css">No</label><br></td>
        </tr>

        <tr>

            <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
            <td>Tom Sam </td>
            <td>habenaat@gmail.com</td>
            <td>754 247-3827</td>
            <td>113</td>
            <td>345</td>
            <td>01/28/2023</td>
            <td>01/28/2023</td>
            <td>charlotte</td>
            <td>
                <input type="radio" id="html15" name="fav_language16" value="HTML" >
                <label for="html">Yes</label>
                <input type="radio" id="css15" name="fav_language16" value="CSS">
                <label for="css">No</label><br></td>
        </tr>
    </table>

</div>















<jsp:include page="../include/footer.jsp" />