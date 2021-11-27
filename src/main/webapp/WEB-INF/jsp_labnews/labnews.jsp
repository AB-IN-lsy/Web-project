<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${labnews.alLabel }</title>
</head>

<body>
<label>id:</label>${labnews.alId }<br>
<label>Label:</label>${labnews.alLabel } <br>
<label>Content:</label>${labnews.alContent } <br>
<label>insert_time:</label>${labnews.insertTime } <br>
<label>update_time:</label>${labnews.updateTime } <br>

</body>
</html>