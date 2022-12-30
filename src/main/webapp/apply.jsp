<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--   	<%
	request.setCharacterEncoding("UTF-8");
	int no = 0;
	applyno = (Integer)request.getAttribute("applyno");
	%>
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EVANS TRIO :: 에반스 트리오</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="./css/style.css" />
<script type="text/javascript" src="script.js"></script>
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
						<h3 class="title3 gowun">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							시간 | 2023. 01. 01 (SUN) 18:00-22:00</h3> <br></li>
					<li>
						<h3 class="title3 gowun">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							장소 | 홍대 클럽 에반스</h3> <br>
					</li>
					<li>
						<h3 class="title3 gowun">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
					<li style="font-size: 18px;" class="gowun"><a href="hislife">빌의
							생애</a></li>
					<li style="font-size: 18px;" class="gowun"><a href="titlesong">대표곡</a></li>
					<li style="font-size: 18px;" class="gowun"><a href="apply">참가신청</a></li>
					<li style="font-size: 18px;" class="gowun"><a href="list">신청자명단</a></li>
					<li style="font-size: 18px;" class="gowun"><a href="home">홈으로</a></li>
				</ul>
			</nav>
			<!-- 신청양식만들기 -->
			<div class="applysection">
				<section>
					<div class="apply_title caveat">
						WELCOME TO<br>
						<span style="color: #8080ff;">EVANS TRIO</span>
					</div>
					<form name="frm" action="insert">
						<input type="hidden" id="GUBUN" value="insert">
						<div class="wrapper">
							<table style="margin: 0 auto">
								<tr>
									<td><input type="text" name="no"<%--value="<%=no%>--%>"
										></td>
								</tr>
								<tr>
									<td><input type="text" name="name" placeholder="이름을 알려주세요"></td>
								</tr>
								<tr>
									<td><input type="text" name="age" placeholder="나이를 알려주세요"></td>
								</tr>
								<tr>
									<td><input type="tel" name="phone"
										placeholder="번호 좀 알려주세요"></td>
								</tr>
								<tr>
									<td><input type="text" name="address"
										placeholder="어디에 사시나요?"></td>
								</tr>
								<tr>
									<td><input type="text" name="instrument"
										placeholder="무슨 악기를 연주하시나요?"></td>
								</tr>
								<tr>
									<td><input type="text" name="career"
										placeholder="연주 경력은 얼마나 되시나요?"></td>
								</tr>
								<tr>
									<td><input type="text" name="major" placeholder="전공이신가요?"></td>
								</tr>
								<tr>
									<td colspan="2">
										<button class="btn" type="submit"
											onclick="fn_submit(); return false;">등록</button>
										<button class="btn" type="button" onclick="location='list'">조회</button>
									</td>
								</tr>
							</table>
						</div>
					</form>
				</section>
			</div>
		</div>
	</div>
	<div class="footer caveat">" WE ARE EVANS TRIO "</div>
</body>
</html>