<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script data-cfasync="false" type="text/javascript"
	src="https://cdn.rawgit.com/dwyl/html-form-send-email-via-google-script-without-server/master/form-submission-handler.js">
</script>
<script src="http://code.jquery.com/jquery-3.1.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#submitSuccessMessage1').hide();
		$('#namef').hide();
		$('#phonef').hide();
		$('#emailf').hide();
		$('#emailcheckf').hide();
		$('#msgf').hide();
	})
	
	function send_msg() {
		
		var formData = $("#contactForm").serialize();
		//이메일 유효성검사
		var emailcheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		
		if(!$('#name').val()){
			$('#name').focus();
			$('#namef').show();
			$('#phonef').hide();
			$('#emailf').hide();
			$('#emailcheckf').hide();
			$('#msgf').hide();
			return false;
		}else if(!$('#email').val()){
			$('#email').focus();
			$('#namef').hide();
			$('#phonef').hide();
			$('#emailf').show();
			$('#emailcheckf').hide();
			$('#msgf').hide();
			return false;
		}else if(!emailcheck.test($('#email').val())){
			$('#email').focus();
			$('#namef').hide();
			$('#phonef').hide();
			$('#emailf').hide();
			$('#emailcheckf').show();
			$('#msgf').hide();
			return false;
		}else if(!$('#phone').val()){
			$('#phone').focus();
			$('#namef').hide();
			$('#phonef').show();
			$('#emailf').hide();
			$('#emailcheckf').hide();
			$('#msgf').hide();
			return false;
		}else if(!$('#message').val()){
			$('#message').focus();
			$('#namef').hide();
			$('#phonef').hide();
			$('#emailf').hide();
			$('#emailcheckf').hide();
			$('#msgf').show();
			return false;
		}else{
			$.ajax({
			url: 'https://script.google.com/macros/s/AKfycbzIKjlISkWqlzCKC2uuwUfucT7MrkZgJvahRamhAq38aO3lWYVnYVrk7KDuHyns1KkR/exec',
			type: 'POST',
			data: formData,
			//contentType : false,
        	//processData: false,
        	//cache: false,
			success: function(data) {
				
				name.disabled = true;
				$('#namef').hide();
			
				email.disabled = true;
				$('#emailf').hide();
				$('#emailcheckf').hide();
			
				phone.disabled = true;
				$('#phonef').hide();
			
				message.disabled = true;
				$('#msgf').hide();
			
				submitButton.disabled= true;
				$('#submitSuccessMessage1').show();
				},
			error: function(error) {
				console.log(error);
				}
			});
		}
	}
</script>
</head>
<body>
	<!-- Navigation-->
	<jsp:include page="tyranno_nav.jsp"></jsp:include>
	
	<section class="page3-section"></section>

	<jsp:include page="scroll_spy3.jsp"></jsp:include>
	
	<!-- Contact-->
	<section class="page2-section" id="contact">
		<div class="container">
			<!-- <div class="text-start">
				<br>
				<br>
				<h2 class="section-heading text-uppercase">Contact Us</h2>
				<br>
				<br>
			</div> -->
			
			<form id="contactForm" name="contactForm"
				class="gform" method="POST">
				<!-- action="https://script.google.com/macros/s/AKfycbzIKjlISkWqlzCKC2uuwUfucT7MrkZgJvahRamhAq38aO3lWYVnYVrk7KDuHyns1KkR/exec" -->
				<!-- data-sb-form-api-token="0ea5e1cc-b78c-4d49-9c0b-a496dfd1222c" -->
				<div class="row align-items-stretch mb-5">
					<div class="col-md-6">
						<h2 class="section-heading text-uppercase sa sa-right" data-sa-delay="300">당신은 지금</h2>
						<h2 class="section-heading text-uppercase sa sa-left" data-sa-delay="600">어떤 꿈을 꾸고 있나요?</h2>
						<div class="masthead-subheading minitext text-start sa sa-right" data-sa-delay="900">당신의 힘이
							되어줄 가장 쓸모있는 조력자...</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<!-- Name input-->
							<input class="form-control sa sa-right" data-sa-delay="1200" id="name" name="name" type="text"
								placeholder="Your Name *" required="required" />
							<div class="feedback" id="namef">*필수항목입니다.</div>
						</div>
						<div class="form-group">
							<!-- Email address input-->
							<input class="form-control sa sa-right" data-sa-delay="1500" id="email" name="email" type="email"
								placeholder="Your Email *" required="required" />
							<div class="feedback" id="emailf">*필수항목입니다.</div>
							<div class="feedback" id="emailcheckf">*이메일
								형식이 올바르지 않습니다.</div>
						</div>
						<div class="form-group mb-md-0">
							<!-- Phone number input-->
							<input class="form-control sa sa-right" data-sa-delay="1800" id="phone" name="phone" type="tel"
								placeholder="Your Phone *" required="required" maxlength="11"
								onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
							<div class="feedback" id="phonef">*필수항목입니다.</div>
						</div>
						<br>
						<div class="form-group form-group-textarea mb-md-0">
							<!-- Message input-->
							<textarea class="form-control sa sa-right" data-sa-delay="2100" id="message" name="message"
								placeholder="Your Message *" required="required"></textarea>
							<div class="feedback" id="msgf">*필수항목입니다.</div>
						</div>
						<br>
						<div class="text-center">
							<button class="btn btn-primarysbtn btn-xl sa sa-right" data-sa-delay="300"
								id="submitButton" type="button" onclick="send_msg(); return false;"><span></span></button>
						</div>
						
						<div class="d-none1" id="submitSuccessMessage1">
							<div class="text-center">
								<div class="fw-bolder"><br>전송되었습니다.</div>
								문의해주셔서 감사합니다. 곧 회신 드리겠습니다.<br/>
							</div>
						</div>
					</div>
				</div>

			</form>
		</div>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>
	
	<script src="js/script2.js"></script>
</body>
</html>