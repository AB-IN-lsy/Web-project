
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${teacher.tName }</title>
</head>

<body>
<label>id：</label>${teacher.tId }<br>
<label>Name：</label>${teacher.tName } <br>
<label>University：</label>${teacher.tUniversity } <br>
<label>Title：</label>${teacher.tTitle } <br>
<label>Pic：</label>${teacher.tPic } <br>
<label>insert_time：</label>${teacher.insertTime } <br>
<label>update_time：</label>${teacher.updateTime } <br>

</body>
</html>