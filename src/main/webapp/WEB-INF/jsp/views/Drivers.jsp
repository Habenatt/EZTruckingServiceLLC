<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:include page="../include/driversHeader.jsp" />



<div class="row" style="margin-left: 50px;" id="myform">
   <h1><div class="col-sm-1   ">
       <FORM> <INPUT TYPE="button" VALUE="Back" onClick="history.go(-1)"> </FORM>
   </div></h1>



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