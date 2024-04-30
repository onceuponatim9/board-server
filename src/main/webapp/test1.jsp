<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String pageData = (String) pageContext.getAttribute("test");
String requestData = (String) request.getAttribute("test");
String sessionData = (String) session.getAttribute("test");
String applicationData = (String) application.getAttribute("test");

out.print(String.format("<p>pageData : <b>%s</b></p>", pageData));
out.print(String.format("<p>requestData : <b>%s</b></p>", requestData));
out.print(String.format("<p>sessionData : <b>%s</b></p>", sessionData));
out.print(String.format("<p>applicationData : <b>%s</b></p>", applicationData));
%>

<!-- JSP EL(Expression language) Tag -->
<p>${pageScope.test}</p>
<p>${requestScope.test}</p>
<p>${sessionScope.test}</p>
<p>${applicationScope.test}</p><br>

<!--  Default 참조 영역 확인용 : request > session > application -->
<p>${pageScope.test}</p>
<!--  
<script>
const val = '1234';
const str = `${val}`;
</script>
-->
<button onClick="location.href='test2.jsp'">Test2로 이동</button>
</body>
</html>