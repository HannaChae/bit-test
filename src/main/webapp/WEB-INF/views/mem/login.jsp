<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<body>
<h1>로그인</h1><button type="button" class="home-btn" id="home-btn">Home</button>
<label for="memid"><b>ID</b></label>
<input type="text" placeholder="Enter ID" id="memid" required>
<label for="password"><b>PW</b></label>
<input type="password" placeholder="Enter pw" id="password" required>
<button type="button" class="login-btn" id="login-btn">로그인</button>
<script src="${mem}/js/login.js"></script>
<script>

</script>
</body>
</html>