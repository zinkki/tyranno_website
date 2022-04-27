<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-3.1.0.min.js"></script>
<script type="text/javascript">
	function contact() {
		location.href="/go_contact";
	}
</script>
</head>
<body>
	 <section class="page-section bg-light" id="team">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 dream sa sa-right" data-sa-delay="400">
                        <div class="team-member">
                            <img class="dreamimg" src="assets/img/team/main4_1.png" alt="..." />
                        </div>
                    </div>
                    <div class="col-lg-5 dream-text sa sa-right" data-sa-delay="200">
                        <div class="team-member">
                            <h2>당신은 지금<br>어떤 꿈을 꾸고 있나요?</h2>
                            <p class="text-muted">
                            때로는 파트너, 때로는 멘토, 때로는 친구, 다양한 위치에서
                            다양한 방향으로 당신의 비지니스를 지지합니다.</p><br>
                            <button type="button" class="btn btn-primary2" onclick="contact(); return false;">Contact Us</button>
					</div>
                    </div>
                </div>
            </div>
        </section>
        <script src="js/floweref.js"></script>
</body>
</html>