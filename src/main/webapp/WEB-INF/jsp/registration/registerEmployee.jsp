<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<jsp:include page="../include/registrationHeader.jsp" />

<strong>
<div class="container">
    <c:choose>
        <c:when test="${empty formBeanKey.id}">
            <h1 style="color: #1b476b">Create New Employee</h1><br>
        </c:when>
        <c:otherwise>
            <h1 style="color: #1b476b">Edit User</h1><br>
        </c:otherwise>
    </c:choose>
    <form method="POST" action="/EZ-TruckingService/registerEmployeeSubmit"  >
        <input type="hidden" name="id" value="${formBeanKey.id}">


        <label for="fname" style="width: 14%;"  > <b>First name:</b></label>
        <input type="text" id="fname" name="firstName" value="${formBeanKey.firstName}" placeholder="First name"><br>

        <label for="lname" style="width: 14%;" > <b>Last name:</b></label>
        <input type="text" id="lname" name="lastName" value="${formBeanKey.lastName}" placeholder="Last name"><br>

        <label for="phone" style="width: 14%;"><b>Telephone:</b></label>
        <input type="text" id="phone" name="telephone" value="${formBeanKey.telephone}" placeholder="Telephone Number"><br>



        <label for="email" style="width: 14%;"><b>email:</b></label>
        <input type="text" id="email" name="email" value="${formBeanKey.email}" placeholder="E-mail"><br>

        <label for="uname" style="width: 14%;"  > <b>User name:</b></label>
        <input type="text" id="uname" name="userName" value="${formBeanKey.userName}" placeholder="User name"><br>



        <label for="address" style="width: 14%;"  > <b>Address:</b></label>
        <input type="text" id="address" name="address" value="${formBeanKey.address}" placeholder="Address"><br>


        <label for="pass" style="width: 14%;"><b>Password:</b></label>
        <input type="text" id="pass" name="password" value="${formBeanKey.password}" placeholder="Password"><br>

        <label for="Cpass" style="width: 14%;"><b>confirm Password:</b></label>
        <input type="text" id="Cpass" name="confirmPassword" value="${formBeanKey.confirmPassword}" placeholder="Confirm your Password"><br>



        <%-- <input id="add" type="submit" name="submit"  value="Register" /><br>--%>
        <c:if test="${empty formBeanKey.id}">
            <a type="submit" class="btn btn-primary" role="button" onClick="history.go(-1)" style="color: white"> Back</a>
            <button type="submit" class="btn btn-primary" role="button" >Create</button>
            <a type="submit" class="btn btn-primary" role="button"href="/home">Home</a> </b>

        </c:if>

        <c:if test="${not empty formBeanKey.id}">
            <a type="submit" class="btn btn-primary" role="button" onClick="history.go(-1)" style="color: white"> Done</a>
            <button type="submit" class="btn btn-primary" role="button"  >Update</button>
            <b><a class="btn btn-danger" role="button" href="/EZ-TruckingService/deleteUserEmployee?id=${formBeanKey.id}">Delete</a></b>
            <a type="submit" class="btn btn-primary" role="button"href="/home">Home</a> </b>
               </c:if>

    </form>
</div>
</strong>
<div class="container" style="color: red">
    <c:forEach  items="${formBeanKey.errorMessages}" var="message" varStatus="status">
        <span style="color: red">${message}</span><br>
    </c:forEach>
</div>

<div>
    <img src="../../../pub/images/home-iso.svg" style="margin-left:1000px; margin-top:-350px; height:700px;">
</div>


<jsp:include page="../include/footer.jsp" />
