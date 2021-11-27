
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${news.nLabel }</title>
</head>

<body>
<label>id：</label>${news.nId }<br>
<label>Label：</label>${news.nLabel } <br>
<label>Content：</label>${news.nContent } <br>
<label>insert_time：</label>${news.insertTime } <br>
<label>update_time：</label>${news.updateTime } <br>

</body>
</html>