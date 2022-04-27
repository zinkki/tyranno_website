<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>portfolio</title>
<link rel="stylesheet" href="https://use.typekit.net/pwo6ytv.css">
<link rel="stylesheet" href="css/style.css">
</head>

<body>

<jsp:include page="tyranno_nav.jsp"></jsp:include>


<section class="page3-section"></section>

<jsp:include page="scroll_spy.jsp"></jsp:include>

<section class="page2-section" id="portSection">
  <div class="container grid">
  
    <article class="a1">
      <a class="a1aa" href="#">
        <img class="poimg"
        src="../images/bcoin2.jpg" alt="">
      </a>
      <section class="description">
        <h2 class="portH2">CoinChat<br>코인챗</h2>
        <div class="details-view">
          <p>코인챗은 암호화폐 채굴을 주력으로 위탁채굴,
           클라우드 마이닝, 블록체인 관련 S/W, H/W 등 다양한 
           사업을 영위 및 시도하고 있는 블록체인 기업입니다.</p>
          <button type="button">Move to top</button>
        </div>
      </section>
    </article>
    <article class="article article-2">
      <a href="#">
        <img class="poimg"
        src="../images/carimg4.jpg" alt="">
      </a>
      <section class="description">
        <h2 class="portH2">AutoManix<br>오토매닉스</h2>
        <div class="details-view">
          <p>'Asia-Pacific's Premier Sim-Racing Promoter'를 목표로 
          모터스포츠 대회 기획/운영, 모터스포츠 방송/운영/솔루션 개발 등 모터스포츠를 주제로 하는 
           다양한 분야 사업을 진행하는 프로모터 기업입니다.</p>
          <button type="button">move to top</button>
        </div>
      </section>
    </article>
    
    <article class="article article-3">
      <a href="#">
        <img class="poimg"
        src="../images/inmotion.webp" alt="">
      </a>
      <section class="description">
        <h2 class="portH2">Inmotion<br>인모션렌터카</h2>
        <div class="details-view">
          <p>인모션 렌터카는 자동차 마니아가 모여 
          자동차가 주는 근원적인 매력인 달리는 즐거움을 고객 한 분, 한 분과 공유하고
           싶다는 일념으로 2009년 창업한 사고대차 전문 렌터카 업체입니다.</p>
          <button type="button">Move to top</button>
        </div>
      </section>
    </article>
    
  </div>
</section>


<jsp:include page="footer.jsp"></jsp:include>

<!-- 사진움직이는부분 -->
<script src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/gsap-latest-beta.min.js'></script>
<script src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/Draggable3.min.js'></script>
<script src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/EasePack3.min.js'></script>
<script src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/Flip.min.js'></script>

<script  src="js/floweref.js"></script>
</body>
</html>