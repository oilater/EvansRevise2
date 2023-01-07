<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>\
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
		<%@include file="header.jsp"%>
		<div class="main-right">
			<%@include file="topmenu.jsp"%>
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
							<th class="gowun">정보수정</th>
							<th class="gowun">삭제</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="applicant" items="${applyList}" varStatus="status">
							<tr>
								<td>${applicant.no}</td>
								<td>${applicant.name}</td>
								<td>${applicant.age}</td>
								<td>${applicant.phone}</td>
								<td>${applicant.address}</td>
								<td>${applicant.instrument}</td>
								<td>${applicant.career}</td>
								<td>${applicant.major}</td>
								<td><button class="revisebtn" name="revise" type="submit">수정</button>
								<td><button class="failbtn" name="fail" type="submit">삭제</button>
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