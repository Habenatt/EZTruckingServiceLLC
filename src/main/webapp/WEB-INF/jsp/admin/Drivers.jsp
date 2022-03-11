<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:include page="../include/driversHeader.jsp" />



<div class="row" style="margin-left: 50px;" id="myform">

    <div class="col-sm-4 m-3" style="width: 400px; height: 600px; margin-left: 30px; display:inline-block; background-color: dimgrey;  border-radius:20px;   border: 2px solid rgb(4, 227, 235, 0.2);
         border-radius: 10px 10px 10px 10px; border: 4mm ridge rgb(170,50,220, .6);  border-radius: 10%; ">
        <h2 style="text-align: center;"> All Driver</h2>
        <form action="index.jsp" style="background-color: dimgrey;">
            <br>
            <label for="FullName" style="width: 30%; display: inline-block; padding-left: 9px;">Full Name:</label>
            <input id="FullName" type="text" name="name" size="20" required style="border-color: rgb(131, 6, 247);  border-width: 4px;" placeholder="Sam Tom"/><br><br>

            <label for="email" style="width: 30%; display: inline-block; padding-left: 9px;">Email:</label>
            <input id="email" type="email" name="email" size="20" style="border-color: rgb(131, 6, 247);  border-width: 4px;" placeholder="*@*.*" /><br><br>



            <label for="phone" style="width: 30%; display: inline-block; padding-left: 9px;">Telephone:</label>
            <input id="phone" type="tel" name="phone" size="20" style="border-color: rgb(131, 6, 247);  border-width: 4px;" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" /> <small>Format: 123-4567-6789</small><br><br>


            <label for="dob" style="width: 30%; display: inline-block; padding-left: 9px;">DOB:  </label>
            <input id="dob" type="date" min="1970-11-30" max="2008-11-30" name="date" size="20" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /> <small>Format: mm/dd/yyy!</small><br><br>





            <label for="lic" style="width: 30%; display: inline-block; padding-left: 9px;">License No:</label>
            <input id="lic" type="number" name="lic" size="20" pattern="[0-9]{3}" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /> <small>Format: 345 </small><br><br>

            <label for="licEx" style="width: 30%; display: inline-block; padding-left: 9px;">License Expiration date:  </label>
            <input id="licEx" type="date" min="2022-1-21" name="date" size="20" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /><br><br>

            <label for="qan" style="width: 30%; display: inline-block; padding-left: 9px;"><b> Experience(in Years):</b></label>
            <input id="qan" type="number" name="ocena" value="0" min="1" max="6" size="20" style="border-color: rgb(131, 6, 247);  border-width: 4px;" /><small>from 1 to 6!</small><br><br>


            <input id="add" type="button" name="submit"  value="Submit" style=" margin-left:20px; border-color: darkslateblue; background-color: dimgray; padding-left: 20px; padding-right: 20px; align-content: center;  "  onclick="Javascript:addRow()"/><br>

        </form><br><br><br>
    </div>

    <div class="col-sm-7  m-3 " id="mydata" style="width: 40%; height: 600px;  display:inline-block;  position: relative; border-radius:20px; ">
        <h3 style="color: rgb(56, 9, 185); text-align: center; ">  <strong>All Available Drivers</strong> </h3>
        <table  class="fixed" border="5"  id="myTableData" style="text-align: center; margin-left: 30px;">

            <col width="60px" />
            <col width="130px" />
            <col width="150px" />
            <col width="100px" />
            <col width="90px" />
            <col width="60px" />
            <col width="90px" />
            <col width="40px" />


            <tr align ="center" style="background-color: cadetblue; color: rgb(56, 9, 185); " ><b>
                <td>&nbsp;</td>
                <td > Driver Full Name</td>
                <td >Driver EMail</td>
                <td>Telephone</td>
                <td>DOB</td>
                <td>License No.</td>
                <td>License Exp.</td>
                <td>Experience</td> </b>


            </tr>


            <tr>
                <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
                <td>Tom Sam </td>
                <td>habenaat@gmail.com</td>
                <td>754 247-3827</td>
                <td>11/23/1980</td>
                <td>345</td>
                <td>01/28/2023</td>
                <td>2</td>
            </tr>
            <tr>
                <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
                <td>Tom Sam </td>
                <td>habenaat@gmail.com</td>
                <td>754 247-3827</td>
                <td>11/23/1980</td>
                <td>345</td>
                <td>01/28/2023</td>
                <td>2</td>
            </tr>
            <tr>

                <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
                <td>Tom Sam </td>
                <td>habenaat@gmail.com</td>
                <td>754 247-3827</td>
                <td>11/23/1980</td>
                <td>345</td>
                <td>01/28/2023</td>
                <td>2</td>
            </tr>

            <tr>
                <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
                <td>Tom Sam </td>
                <td>habenaat@gmail.com</td>
                <td>754 247-3827</td>
                <td>11/23/1980</td>
                <td>345</td>
                <td>01/28/2023</td>
                <td>2</td>
            </tr>
            <tr>
                <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
                <td>Tom Sam </td>
                <td>habenaat@gmail.com</td>
                <td>754 247-3827</td>
                <td>11/23/1980</td>
                <td>345</td>
                <td>01/28/2023</td>
                <td>2</td>
            </tr>
            <tr>

                <td><input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)"></td>
                <td>Tom Sam </td>
                <td>habenaat@gmail.com</td>
                <td>754 247-3827</td>
                <td>11/23/1980</td>
                <td>345</td>
                <td>01/28/2023</td>
                <td>2</td>
            </tr>
        </table>

    </div>
</div>


<jsp:include page="../include/footer.jsp" />