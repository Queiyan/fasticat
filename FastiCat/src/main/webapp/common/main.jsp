<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../resources/css/common/header.css">
<link rel="stylesheet" href="../resources/css/common/main.css">
<link rel="stylesheet" href="../resources/css/common/footer.css">
<link rel="stylesheet" href="../resources/css/customer/search.css">

<script src="https://kit.fontawesome.com/e99c5d1543.js" crossorigin="anonymous"></script>
<!-- (3-3-2). 자바스크립트 소스 추가 -->
<!-- defer : 모든 html 파일을 로딩할때까지 html이 브라우저에 표시가 안되는 것을 방지 -->

<script src="../resources/js/customer/main.js" defer></script>
<script>

/* function handleSearch() {
    var searchInput = document.getElementById('searchInput').value.trim();
    
    if (searchInput === '') {
        return false; // 검색어가 비어 있으면 이벤트 취소
    } else {
        // 검색어가 있으면 search.html로 이동
        window.location.href = '../../customer/search/search.html?q=' + encodeURIComponent(searchInput);
        return false; // 이벤트 취소
    }
} */
</script>
<title>main</title>
<style>
	.slide_section input[id*="slide"] {display:none;}
	.slide_section .slidewrap {max-width:1200px;margin:0 auto;}
	.slide_section .slidelist {white-space:nowrap;font-size:0;overflow:hidden;position:relative;}
	.slide_section .slidelist > li {display:inline-block;vertical-align:middle;width:100%;transition:all .5s;}
	.slide_section .slidelist > li > a {display:block;position:relative;}
	.slide_section .slidelist > li > a img {width:100%;}
	.slide_section .slidelist label {position:absolute;z-index:10;top:50%;transform:translateY(-50%);padding:50px;cursor:pointer;}
	.slide_section .slidelist .textbox {position:absolute;z-index:1;top:50%;left:50%;transform:translate(-50%,-50%);line-height:1.6;text-align:center;}
	.slide_section .slidelist .textbox h3 {font-size:36px;color:#fff;;transform:translateY(30px);transition:all .5s;}
	.slide_section .slidelist .textbox p {font-size:16px;color:#fff;opacity:0;transform:translateY(30px);transition:all .5s;}
	
	/* input에 체크되면 슬라이드 효과 */
	.slide_section input[id="slide01"]:checked ~ .slidewrap .slidelist > li {transform:translateX(0%);}
	.slide_section input[id="slide02"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-100%);}
	.slide_section input[id="slide03"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-200%);}

	/* input에 체크되면 텍스트 효과 */
	.slide_section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
	.slide_section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
	.slide_section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
	.slide_section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
	.slide_section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
	.slide_section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}

	/* 좌,우 슬라이드 버튼 */
	.slide-control > div {display:none;}
	.slide_section .left {color:black; left:30px;background:url('./img/left.png') center center / 100% no-repeat;}
	.slide_section .right {color:black; right:30px;background:url('./img/right.png') center center / 100% no-repeat;}
	.slide_section input[id="slide01"]:checked ~ .slidewrap .slide-control > div:nth-child(1) {display:block;}
	.slide_section input[id="slide02"]:checked ~ .slidewrap .slide-control > div:nth-child(2) {display:block;}
	.slide_section input[id="slide03"]:checked ~ .slidewrap .slide-control > div:nth-child(3) {display:block;}

	/* 페이징 */
	.slide-pagelist {text-align:center;padding:20px;}
	.slide-pagelist > li {display:inline-block;vertical-align:middle;}
	.slide-pagelist > li > label {display:block;padding:8px 30px;border-radius:30px;background:#ccc;margin:20px 10px;cursor:pointer;}
	.slide_section input[id="slide01"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(1) > label {background:#999;}
	.slide_section input[id="slide02"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(2) > label {background:#999;}
	.slide_section input[id="slide03"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(3) > label {background:#999;}
	</style>
</head>
<body>
	
   <div class="wrap">
      <!-- header 시작 -->
      <nav class="navbar">
         <ul class="navbar_menu">
            <a href="main.html"><img src="../resources/images/festicat.PNG" width="155px" height="50px" id="festicat" ></a>
            <li><a href="#">국내공연</a></li>
            <li><a href="#">국내 페스티벌</a></li>
            <li><a href="#">장르 별 인기순위</a></li>
            <li><a href="#">공연후기</a></li>
            <li><a href="#">자유게시판</a></li>
            <li><a href="#">공지사항 게시판</a></li>
         </ul>
         
         <ul class="navbar_icons">
            <li><a href="main.html"><i class="fa-brands fa-twitter"></i></a></li>
            <li><a href="main.html"><i class="fa-brands fa-facebook"></i></a></li>
            <li><a href="../customer/login/login.html">LOGIN</a></li>
      		<!-- 나중에 검색값 넘겨야 함 -->
<!--             <form id="searchForm" class="d-flex" role="search" onsubmit="return handleSearch()"> -->
			<input id="searchInput" class="inputButton" type="search" placeholder="Search" aria-label="Search">
			<input class="inputButton" type="button" value="search" onclick="window.location='../customer/search/search.html'">
<!-- 			</form> -->
            <li><a href="../customer/mypage/myPage.html"><i class="fa-solid fa-user"></i></a></li> 
         </ul>
      
      	<!-- 반응형 웹 - (1). 햄버거 아이콘 fontawesome - free - bars -->
      	<a href="#" class="navbar_toggleBtn">
      		<i class="fa-solid fa-bars"></i>
      	</a>
      
      </nav>
      <!-- header 끝 -->
      <br>
      <!-- 컨텐츠 시작 -->
      <center>
<div class="slide_section">
	<input type="radio" name="slide" id="slide01" checked>
	<input type="radio" name="slide" id="slide02">
	<input type="radio" name="slide" id="slide03">
	<div class="slidewrap">
		
		<ul class="slidelist">
			<!-- 슬라이드 영역 -->
			<li class="slideitem">
				<a>
					<div class="textbox">
					</div>
					<img src="../resources/images/slide1.PNG"">
				</a>
			</li>
			<li class="slideitem">
				<a>
					
					<div class="textbox">
					</div>
					<img src="../resources/images/slide2.PNG">
				</a>
			</li>
			<li class="slideitem">
				<a>
					
					<div class="textbox">
					</div>
					<img src="../resources/images/slide3.PNG"">
				</a>
			</li class="slideitem">

			<!-- 좌,우 슬라이드 버튼 -->
			<div class="slide-control">
				<div>
					<label for="slide03" class="left"></label>
					<label for="slide02" class="right"></label>
				</div>
				<div>
					<label for="slide01" class="left"></label>
					<label for="slide03" class="right"></label>
				</div>
				<div>
					<label for="slide02" class="left"></label>
					<label for="slide01" class="right"></label>
				</div>
			</div>

		</ul>
		<!-- 페이징 -->
		<ul class="slide-pagelist">
			<li><label for="slide01"></label></li>
			<li><label for="slide02"></label></li>
			<li><label for="slide03"></label></li>
		</ul>
	</div>

	
</div>	                                                                
      </center>
      <!-- 컨텐츠 끝 -->
      
      
      <!-- footer 시작 -->
      <div class="footer_info">
	      	<div class="footer_link">
	      		<ui>
	      			<li><a href="#">회사소개</a></li>
	      			<li><a href="#">이용약관</a></li>
	      			<li><a href="#">개인정보 처리방침</a></li>
	      		</ui>
	      	</div>
	      	
		 	<div class="footer_info_customer">
		 		<h3>고객센터 02-1234-5678</h3>
		 		<p>
		 			평일 및 주말 10:00 ~ 17:00 (공휴일 휴무)<br>
		 			점심시간 12:00 ~ 13:00 
		 		</p>
	      	</div>
	      	
	      	
	 		<div class="footer_info_company">
		 		<span>법인명 : FastiCat</span>
				<span>대표 : 김준혁 </span>
				<span>사업자번호 : 123-7890</span>
				<span>사업자 소재지 : 서울시 마포구 신수동</span>
	      	</div>
	      	
      </div>
      <!-- footer 끝 -->
      
   </div>
   
</body>
</html>