<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
    <base href="<%=basePath%>">
    
    <title>网页版2048</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/2048.css"/>
	<script type="text/javascript" src="${pageContext.request.contextPath}/style/jquery-1.5.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/style/game.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/style/main.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/style/support.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/style/animation.js"></script>
	<script type="text/javascript">
	    $(function(){   
	       // alert(1);
	    });
	
	</script>
  </head>
  
  <body>
    
    <div id="top">
         <h1>2048</h1>
         <a href="javascript:newGame()" id="newGameButton">重新开始</a>
         <p><span id="scote">得分:0</span></p>
   </div>
    
   <div id="grid-container">
       <div class="grid-cell" id="grid-cell-0-0"></div>
       <div class="grid-cell" id="grid-cell-0-1"></div>
       <div class="grid-cell" id="grid-cell-0-2"></div>  
       <div class="grid-cell" id="grid-cell-0-3"></div>
       <div class="grid-cell" id="grid-cell-1-0"></div>
       <div class="grid-cell" id="grid-cell-1-1"></div>
       <div class="grid-cell" id="grid-cell-1-2"></div>
       <div class="grid-cell" id="grid-cell-1-3"></div>
       <div class="grid-cell" id="grid-cell-2-0"></div>
       <div class="grid-cell" id="grid-cell-2-1"></div>
       <div class="grid-cell" id="grid-cell-2-2"></div>
       <div class="grid-cell" id="grid-cell-2-3"></div>
       <div class="grid-cell" id="grid-cell-3-0"></div>
       <div class="grid-cell" id="grid-cell-3-1"></div>
       <div class="grid-cell" id="grid-cell-3-2"></div>
       <div class="grid-cell" id="grid-cell-3-3"></div>
      
   </div>
  </body>
</html>