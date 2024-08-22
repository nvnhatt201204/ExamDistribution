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
<%--<form action="/staff/add" object="${staff}" method="post">--%>
<%--    <div>--%>
<%--        <label for="staffCode">Staff Code:</label>--%>
<%--        <input type="text" id="staffCode" th:field="*{staffCode}" />--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        <label for="accountFpt">FPT Email:</label>--%>
<%--        <input type="email" id="accountFpt" th:field="*{accountFpt}" />--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        <label for="accountFe">FE Email:</label>--%>
<%--        <input type="email" id="accountFe" th:field="*{accountFe}" />--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        <label for="name">Name:</label>--%>
<%--        <input type="text" id="name" th:field="*{name}" />--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        <button type="submit">Submit</button>--%>
<%--    </div>--%>
<%--</form>--%>
<%--<div th:if="${error}" th:text="${error}" style="color: red;"></div>--%>
<%--<br>--%>
<%--<br>--%>
<%--<table>--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>STT</th>--%>
<%--        <th>Ma nhan vien</th>--%>
<%--        <th>Ten nhan vien</th>--%>
<%--        <th>Email FPT</th>--%>
<%--        <th>Email FE</th>--%>
<%--        <th>Trang thai</th>--%>
<%--        <th colspan="2">Hanh dong</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <c:forEach items="${listStaff}" var="p" varStatus="s">--%>
<%--        <tr>--%>
<%--            <td>${s.index + 1}</td>--%>
<%--            <td>${p.staffCode}</td>--%>
<%--            <td>${p.name}</td>--%>
<%--            <td>${p.accountFpt}</td>--%>
<%--            <td>${p.accountFe}</td>--%>
<%--            <td>${p.status}</td>--%>
<%--            <td><a href="/staff/detail/${p.id}">detail</a></td>--%>
<%--            <td><a href="/staff/delete?id=${p.id}">Delete</a></td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    </tbody>--%>
<%--</table>--%>
<h1>Danh sách nhân viên</h1>
<table border="1">
    <thead>
    <tr>
        <th>Staff Code</th>
        <th>Name</th>
        <th>Account FE</th>
        <th>Account FPT</th>
        <th>Status</th>
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
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</body>
</html>