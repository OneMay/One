<%--
  Created by IntelliJ IDEA.
  User: pingcai
  Date: 17-5-6
  Time: 下午4:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/admin/file/img.do" method="post" enctype="multipart/form-data">
        <input type="file" name="file"/>
        <input type="text" name="imgType">
        <input type="submit">提交</input>
    </form>
</body>
</html>
