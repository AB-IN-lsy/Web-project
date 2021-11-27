<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${lab.lName}</title>
</head>

<body>
<label>id：</label>${lab.lId }<br>
<label>Name：</label>${lab.lName } <br>
<label>Label：</label>${lab.lLabel } <br>
<label>Content：</label>${lab.lContent } <br>
<label>Pic：</label>${lab.lPic } <br>
<label>insert_time：</label>${lab.insertTime } <br>
<label>update_time：</label>${lab.updateTime } <br>

</body>
</html>