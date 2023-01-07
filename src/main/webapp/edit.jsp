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
					<form name="frm" method="post" action="B_update?no=${applicant.no}">
						<div class="wrapper">
							<table style="margin: 0 auto">
								<tr>
									<td><input type="text" name="name"
										value="${applicant.name}" placeholder="이름을 알려주세요"></td>
								</tr>
								<tr>
									<td><input type="text" name="age" value="${applicant.age}"
										placeholder="나이를 알려주세요"></td>
								</tr>
								<tr>
									<td><input type="tel" name="phone"
										value="${applicant.phone}" placeholder="번호 좀 알려주세요"></td>
								</tr>
								<tr>
									<td><input type="text" name="address"
										value="${applicant.address}" placeholder="어디에 사시나요?"></td>
								</tr>
								<tr>
									<td><input type="text" name="instrument"
										value="${applicant.instrument}" placeholder="무슨 악기를 연주하시나요?"></td>
								</tr>
								<tr>
									<td><input type="text" name="career"
										value="${applicant.career}" placeholder="연주 경력은 얼마나 되시나요?"></td>
								</tr>
								<!--  라디오 버튼은 어떻게 값 갸져오나?!! -->
								<tr>
									<td><label for="r_yes">전공</label> <input
										id="${applicant.r_yes}" type="radio" name="major" value="전공">
										<label for="r_no">비전공</label> <input id="${applicant.r_no}"
										type="radio" name="major" value="비전공"></td>
								</tr>
								<tr>
									<td colspan="2">
										<button class="btn" type="submit"
											onclick="fn_submit(); return false;">수정</button>
										<button class="btn" type="button" onclick="location='list'">취소</button>
									</td>
								</tr>
							</table>
						</div>
					</form>
				</section>
			</div>
		</div>
	</div>
	<script>
	  <c:if test="${error != null}">
	    alert("${error}");
	  </c:if>
	</script>
	<div class="footer caveat">" WE ARE EVANS TRIO "</div>
</body>
</html>