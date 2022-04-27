<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	
</head>
<body>
		<!-- Navigation-->
        <jsp:include page="tyranno_nav.jsp"></jsp:include>
        
        <!-- Masthead-->
        <header class="masthead">
            <div class="container">
            	<div class="row col-md-12 col-md-offset-0 ">
            	<div class="col-md-4 animated fadeInLeft">
                <div class="masthead-subheading normaltext text-start">모든사람이 꿈꾸는</div>
                <div class="masthead-heading text-start">보다 더 나은<br>세상을 위하여</div>
                <div class="masthead-subheading minitext text-start">초기 사업자, 경영자를 넘어서<br>나아가</div>
                </div>
                <div class="col-md-8 animated fadeInRight">
            	<img class="mainimg" src="../assets/img/main1.png">
            	</div>
            	</div>
            </div>
        </header>
        
        <!-- work -->
        <jsp:include page="work.jsp"></jsp:include>
        
        <!-- work_TEST -->
        <jsp:include page="hihi.jsp"></jsp:include>
        
        <!-- portfolio -->
        <jsp:include page="portfolio.jsp"></jsp:include>
        
        <!-- portfolio Ex -->
        <jsp:include page="undermap.jsp"></jsp:include>
        
        <!-- dream -->
        <jsp:include page="dream.jsp"></jsp:include>
        
        <!-- map -->
        <jsp:include page="map.jsp"></jsp:include>
        
       <jsp:include page="footer.jsp"></jsp:include>
       
    </body>
</html>