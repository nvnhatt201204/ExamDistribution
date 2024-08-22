<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h1>Them nhan vien</h1>
<a href="/staffs/add">Add New Staff</a>
<hr>
<h1>Danh sach nhan vien</h1>
<table border="1">
    <thead>
    <tr>
        <th>Staff Code</th>
        <th>Name</th>
        <th>Account FE</th>
        <th>Account FPT</th>
        <th>Status</th>
        <th colspan="2">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="staff" items="${staffs}">
        <tr>
            <td>${staff.staffCode}</td>
            <td>${staff.name}</td>
            <td>${staff.accountFe}</td>
            <td>${staff.accountFpt}</td>
            <td>${staff.status == 1 ? 'Active' : 'Inactive'}</td>
            <td><a href="/staffs/edit/${staff.id}">edit</a></td>
            <td><a href="/staffs/detail/${staff.id}">detail</a></td>
            <td><a href="/staffs/delete/${staff.id}" onclick="return confirm('Are you sure you want to delete this staff?');">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</body>
</html>