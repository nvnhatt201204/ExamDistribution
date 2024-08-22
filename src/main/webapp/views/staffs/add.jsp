<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm nhân viên</title>
</head>
<body>
<h1>Them nhan vien</h1>
<form action="/staffs/add" method="post">
    <label for="staffCode">Staff Code:</label>
    <input type="text" id="staffCode" name="staffCode" value="${staff.staffCode}" required maxlength="15">
    <br>

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${staff.name}" required maxlength="100">
    <br>

    <label for="accountFe">Account FE:</label>
    <input type="email" id="accountFe" name="accountFe" value="${staff.accountFe}" required pattern="^[^\s@]+@fe\.edu\.vn$">
    <br>

    <label for="accountFpt">Account FPT:</label>
    <input type="email" id="accountFpt" name="accountFpt" value="${staff.accountFpt}" required pattern="^[^\s@]+@fpt\.edu\.vn$">
    <br>

    <label for="status">Status:</label>
    <select id="status" name="status">
        <option value="1" ${staff.status == 1 ? 'selected' : ''}>Active</option>
        <option value="0" ${staff.status == 0 ? 'selected' : ''}>Inactive</option>
    </select>
    <br>

    <input type="submit" value="Add Staff">
</form>

<a href="/staffs/list">Back to list</a>
</body>
</html>
