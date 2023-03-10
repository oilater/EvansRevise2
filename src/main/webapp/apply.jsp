<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

%>
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
		<%@include file="header.jsp"%>
		<div class="main-right">
			<%@include file="topmenu.jsp"%>
			<!-- 신청양식만들기 -->
			<div class="applysection">
				<section>
					<div class="apply_title caveat">
						WELCOME TO<br> <span style="color: #8080ff;">EVANS
							TRIO</span>
					</div>
					<form name="frm" action="B_insert">
						<input type="hidden" id="GUBUN" value="insert">
						<div class="wrapper">
							<table style="margin: 0 auto">
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
									<td><label for="r_yes">전공</label> <input id="r_yes"
										type="radio" name="major" value="전공"> <label
										for="r_no">비전공</label> <input id="r_no" type="radio"
										name="major" value="비전공"></td>
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