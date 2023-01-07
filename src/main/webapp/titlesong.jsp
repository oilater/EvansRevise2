<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="./css/style.css" />
</head>
<body>

	<div class="main-container">
		<%@include file="header.jsp"%>
		<div class="main-right">
			<%@include file="topmenu.jsp"%>
			<div class="song1_div">
				<div class="song1_title">
					<p class="kalam">1. Waltz for Debby - Waltz for Debby(1962)</p>
				</div>
				<br>
				<div class="song1">
					<video controls width="1000px" height="600px">
						<source src="/BillEvans/videos/Waltz.mp4" type="video/mp4">
					</video>
				</div>
				<div class="song1_text">
					<p class="gowun">빌리지 뱅가드 실황 녹음 후 열흘 만에 스콧 라파로가 불의의 교통사고로 사망하여
						'Waltz for Debby'는 그의 사후 발매한 앨범이 되었다. 이 음반의 첫 트랙에는 앨범 제목과 같은 빌 에반스
						오리지널 대신, 영화 'My Foolish Heart'(비정, 1949)의 타이틀곡이 먼저 등장한다. 영화의 흥행은
						실패로 끝났으나, 빅터 영이 작곡한 ‘My Foolish Heart’은 아카데미 주제가상 후보로 올랐다. 이 곡은 빌
						에반스 음반에 두 번 이상 수록되면서 유명한 재즈 스탠더드가 되었다.</p>
				</div>
			</div>
			<br>
			<br>
			<div class="song2_div">
				<div class="song2_title">
					<p class="kalam">2. Someday My Prince Will Come - Live from
						Iowa (1979.1)</p>
				</div>
				<br>
				<div class="song2">
					<video controls width="1000px" height="600px">
						<source src="/BillEvans/videos/SomedayMyPrince.mp4"
							type="video/mp4">
					</video>
				</div>
				<div class="song2_text">
					<p class="gowun">빌에반스가 죽음을 맞이하기 얼마 전에 있었던 Iowa 공연이다. 이 유럽 공연
						실황에서는 빌 에반스의 중기에서 말기 까지의 모습을 그대로 전해주고 있다. 베이스 주자는 척 이스라엘의 뒤를 이은 에디
						고메즈다. 디즈니의 ost 곡인 'Someday my prince will come'을 재즈에 처음 접목시킨 것은
						데이브 브루백이지만, 진정 이 곡을 재즈게에 올린 것은 빌에반스의 연주가 아닐까 싶다.</p>
				</div>
			</div>
		</div>
	</div>
	<div class="footer caveat">" WE ARE EVANS TRIO "</div>
</body>
</html>