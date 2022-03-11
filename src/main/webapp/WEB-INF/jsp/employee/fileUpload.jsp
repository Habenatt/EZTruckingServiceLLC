
<jsp:include page="../include/header.jsp" />
<h1>This is a file Upload page</h1>

<form method="POST" enctype="multipart/form-data" action="/user/fileUploadSubmit">

<table>
    <tr>
    <td>


       <td> <input type="text" name="title" placeholder="Enter Title"></td><br>
    <td><input type="file" name="file" /></td>
    </tr>
    <tr>
    <td><input type="submit" value="Submit" /></td>
    </tr>
    </table>
    </form>




<jsp:include page="../include/footer.jsp" />