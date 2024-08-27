<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <%@ include file="../include/mainHeader.jsp" %>
  <title>Recipe</title>
<jsp:include page="../include/pluginpage.jsp"/>
<script type="text/javascript" src="/donghwa/js/furnace/recipeList.js"></script>
</head>
<style>
body {
  background: #ffffff; /* 흰색 배경 */
  width: 100%; /* 100%로 변경하여 반응형으로 설정 */
  height: calc(100vh - 122.95px); /* 전체 높이에서 헤더와 푸터의 높이 합산 */
  
  left: 0;
  top: 47.79px; /* 헤더 바로 아래 위치 */
  z-index: 0;
}

.row_select{
	background-color:#9ABCEA !important;
}
</style>


<body>
	<div id="recipe_list"></div>
</body>

</html>