<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EVANS TRIO :: 에반스 트리오</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="./css/style.css" />
</head>
<body>

	<div class="main-container">
		<div class="main-images">
			<div class="img1">
				<img id="img" src="/BillEvans/images/bill1.jpg" alt="빌에반스" />
			</div>
			<div class="img2">
				<img id="img" src="/BillEvans/images/bill2.jfif" alt="빌에반스" />
			</div>
			<div class="titlebox" style="text-color: white">
				<br>
				<h1 class="title1 caveat">2023 EVANS JAZZ TRIO AUDITION</h1>
				<br>
				<h3 class="title2 gowun">
					<br> 안녕하세요, 빌 에반스의 곡들을 소개하고 연주하는 에반스 재즈 트리오입니다. <br> <br>
					2023년에 저희와 함께 연주하실 분들을 모집하고자 합니다.
				</h3>
				<br> <br>
				<h2 class="title2 gowun">오디션 일정</h2>
				<br>
				<hr>
				<ul>
					<li><br>
						<h3 class="title3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							시간 | 2023. 01. 01 (SUN) 18:00-22:00</h3> <br></li>
					<li>
						<h3 class="title3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							장소 | 홍대 클럽 에반스</h3> <br>
					</li>
					<li>
						<h3 class="title3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							문의 | 김성현 010-2717-6906</h3>
					</li>
				</ul>

			</div>
			<div class="img5">
				<img id="img" src="/BillEvans/images/bill5.jpeg" alt="빌에반스" />
			</div>
			<div class="img6">
				<img id="img" src="/BillEvans/images/bill6.jpg" alt="빌에반스" />
			</div>
			<div class="img7">
				<img id="img" src="/BillEvans/images/bill7.jfif" alt="빌에반스" />
			</div>
			<div class="img8">
				<img id="img" src="/BillEvans/images/bill8.jpg" alt="빌에반스" />
			</div>
			<div class="img9">
				<img id="img" src="/BillEvans/images/bill9.jpg" alt="빌에반스" />
			</div>
			<div class="img10">
				<img id="img" src="/BillEvans/images/bill10.png" alt="빌에반스" />
			</div>

		</div>
		<div class="main-right">
			<nav>
				<ul>
					<li style="font-size:18px;" class="gowun"><a href="hislife">빌의 생애</a></li>
					<li style="font-size:18px;" class="gowun"><a href="titlesong">대표곡</a></li>
					<li style="font-size:18px;" class="gowun"><a href="apply">참가신청</a></li>
					<li style="font-size:18px;" class="gowun"><a href="list">신청자명단</a></li>
					<li style="font-size:18px;" class="gowun"><a href="home">홈으로</a></li>
				</ul>
			</nav>
			<div class="wrapper">
				<table class="apply_list" style="width: 1100px">
					<caption class="applytitle gowun">EVANS JAZZ TRIO 오디션 신청자
						명단</caption>
					<thead>
						<tr>
							<th class="gowun">지원번호</th>
							<th class="gowun">성명</th>
							<th class="gowun">나이</th>
							<th class="gowun">전화번호</th>
							<th class="gowun">주소</th>
							<th class="gowun">악기</th>
							<th class="gowun">연주경력</th>
							<th class="gowun">전공여부</th>
							<th class="gowun">합불여부</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="applicant" items="${applylist}" varStatus="status">
							<tr>
								<td>${applicant.no}</td>
								<td>${applicant.name}</td>
								<td>${applicant.age}</td>
								<td>${applicant.phone}</td>
								<td>${applicant.address}</td>
								<td>${applicant.instrument}</td>
								<td>${applicant.career}</td>
								<td>${applicant.major}</td>
								<td><button class="failbtn" name="fail" type="submit">불합격</button>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="footer caveat">" WE ARE EVANS TRIO "</div>
</body>
</html>