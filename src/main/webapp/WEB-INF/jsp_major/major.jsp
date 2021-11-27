<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${major.mName}</title>
</head>

<body>
<label>id：</label>${major.mId }<br>
<label>Name：</label>${major.mName } <br>
<label>Label：</label>${major.mLabel } <br>
<label>Content：</label>${major.mContent } <br>
<label>Pic：</label>${major.mPic } <br>
<label>insert_time：</label>${major.insertTime } <br>
<label>update_time：</label>${major.updateTime } <br>

</body>
</html>