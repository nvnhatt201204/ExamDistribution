<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Staff</title>
</head>
<body>
<h1>Edit Staff</h1>
<form action="/staffs/update" method="post">
    <input type="hidden" name="id" value="${staff.id}">

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${staff.name}" required><br>

    <label for="staffCode">Staff Code:</label>
    <input type="text" id="staffCode" name="staffCode" value="${staff.staffCode}" required><br>

    <label for="accountFe">FE Account:</label>
    <input type="email" id="accountFe" name="accountFe" value="${staff.accountFe}" required><br>

    <label for="accountFpt">FPT Account:</label>
    <input type="email" id="accountFpt" name="accountFpt" value="${staff.accountFpt}" required><br>

    <button type="submit">Update Staff</button>
</form>
<a href="/staffs/list">Back to List</a>
</body>
</html>
