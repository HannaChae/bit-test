<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<head>
	<title>Home</title>
</head>

<body>
<h1>
Home
<button type="button" class="joinPage-btn" id="joinPage-btn">회원가입</button>	  
<button type="button" class="loginPage-btn" id="loginPage-btn">로그인</button>	
</h1>

<script>
$(`#joinPage-btn`).click( e=> {cmm.joinPage(`${demo}`)})
</script>
</body>
</html>