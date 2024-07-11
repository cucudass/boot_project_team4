<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/style/recurit/recruitinfo.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/recruit/recruit_fn.js"></script>
    <title>기업 채용 공고</title>
    <script>
        function fnMove(seq) {
            var offset = $("#section" + seq).offset();
            $('html, body').animate({
                scrollTop: offset.top
            }, 400); //0.4초 느리게
        }
    </script>
</head>
<jsp:include page="../../header.jsp"/>
<body>
	<div class="container">
	    <div class="summary-details">
			<div class="left-column">
	            <h2><strong> ${jobinfoData.jobtitle}</strong></h2>
	            <p><strong>담당업무:</strong> ${jobinfoData.position}</p>
	            <p><strong>스킬:</strong> ${jobinfoData.skills}</p>
	            <p><strong>경력:</strong>
	                <c:choose>
	                    <c:when test="${jobinfoData.prsup == '0'}">신입/무관</c:when>
	                    <c:when test="${jobinfoData.prsup == '1'}">1-3년</c:when>
	                    <c:when test="${jobinfoData.prsup == '2'}">3-5년</c:when>
	                    <c:when test="${jobinfoData.prsup == '3'}">5-10년</c:when>
	                    <c:when test="${jobinfoData.prsup == '4'}">10년 이상</c:when>
	                    <c:otherwise>미정</c:otherwise>
	                </c:choose>
	            </p>
	            <p><strong>학력:</strong>
	                <c:choose>
	                    <c:when test="${jobinfoData.educa == '0'}">고졸</c:when>
	                    <c:when test="${jobinfoData.educa == '1'}">전문대졸</c:when>
	                    <c:when test="${jobinfoData.educa == '2'}">대졸</c:when>
	                    <c:when test="${jobinfoData.educa == '3'}">석사</c:when>
	                    <c:when test="${jobinfoData.educa == '4'}">박사</c:when>
	                    <c:otherwise>미정</c:otherwise>
	                </c:choose>
	            </p>
	            <p><strong>고용 형태:</strong>
	                <c:choose>
	                    <c:when test="${jobinfoData.wrkty == '0'}">정규직</c:when>
	                    <c:when test="${jobinfoData.wrkty == '1'}">계약직</c:when>
	                    <c:when test="${jobinfoData.wrkty == '2'}">기간제</c:when>
	                    <c:otherwise>미정</c:otherwise>
	                </c:choose>
	            </p>
				<p><strong>급여:</strong>
				    <c:choose>
				        <c:when test="${empty jobinfoData.salary}">
				            회사 내규에 따름 - 면접 후 결정
				        </c:when>
				        <c:otherwise>
				            ${jobinfoData.salary}
				        </c:otherwise>
				    </c:choose>
				</p>
	            <p><strong>근무 지역:</strong> ${jobinfoData.loc01}</p>
	            <p><strong>근무 요일/시간:</strong> ${jobinfoData.wrktm}</p>
	        </div>
	
	        <!-- 기업 정보 -->
	        <div class="right-column">
	            <h3>기업 정보 요약</h3>
	            <ul>
	                <li><strong>업종:</strong> ${companyInfo.dptno}</li>
	                <li><strong>사원수:</strong> ${companyInfo.emnum}</li>
	                <li><strong>설립연도:</strong> ${companyInfo.indue}</li>
	                <li><strong>회사 위치:</strong> ${companyInfo.loc01}</li>
	            </ul>
	        </div>
	    </div>
	</div>
	
    <div class="container">
        <div class="tabs">
	        <a href="javascript:void(0);" onclick="fnMove(1)">기업 소개</a>
	        <a href="javascript:void(0);" onclick="fnMove(2)">담당업무 및 자격 요건</a>
	        <a href="javascript:void(0);" onclick="fnMove(3)">근무 조건</a>
	        <a href="javascript:void(0);" onclick="fnMove(4)">복지 및 혜택</a>
	        <a href="javascript:void(0);" onclick="fnMove(5)">접수기간 및 방법</a>
	    </div>

        <div id="section1">
            <div class="section-title">기업 소개</div>
            <div class="job-details">
            	<form method="get" id="infofrm">
            		<input type="hidden" name="csrno" value="${jobinfoData.csrno }">
            		<input type="hidden" name="jobno" value="${jobinfoData.jobno }">
            	</form>
                <p><strong>공고 제목 : ${jobinfoData.jobtitle}</strong></p>
                <p><strong>공고 부제목 : ${jobinfoData.jobsubtitle}</strong></p><br><br>
				<p><strong>${jobinfoData.content}</strong></p>
			</div>
		</div>
		
		<div id="section2">
            <div class="section-title">담당업무 및 자격 요건</div>
            <div class="job-details">
                <p><strong>담당업무 : ${jobinfoData.position}</strong></p><br>
				<p><strong>스킬</strong></p>
					<ul>
						<li>${jobinfoData.skills}</li>
					</ul>
				<p><strong>자격 요건</strong></p>
				<ul>
					<li>경력 :
						<c:choose>
							<c:when test="${jobinfoData.prsup == '0'}">신입/무관</c:when>
							<c:when test="${jobinfoData.prsup == '1'}">1-3년</c:when>
							<c:when test="${jobinfoData.prsup == '2'}">3-5년</c:when>
							<c:when test="${jobinfoData.prsup == '3'}">5-10년</c:when>
							<c:when test="${jobinfoData.prsup == '4'}">10년 이상</c:when>
							<c:otherwise>미정</c:otherwise>
						</c:choose>
					</li>
					<li>학력 :
						<c:choose>
							<c:when test="${jobinfoData.educa == '0'}">고졸</c:when>
							<c:when test="${jobinfoData.educa == '1'}">전문대졸</c:when>
							<c:when test="${jobinfoData.educa == '2'}">대졸</c:when>
							<c:when test="${jobinfoData.educa == '3'}">석사</c:when>
							<c:when test="${jobinfoData.educa == '4'}">박사</c:when>
							<c:otherwise>미정</c:otherwise>
						</c:choose>
					</li>
					<li>${jobinfoData.duties}</li><br>
					<p><strong>우대 조건</strong></p>
					<li>${jobinfoData.pfntcd}</li>
				</ul>
            </div>
		</div>
		
		<div id="section3">
	        <div class="section-title">근무 조건</div>
	        <div class="job-details">
	            <ul>
	                <li>고용 형태 : 
						<c:choose>
							<c:when test="${jobinfoData.wrkty == '0'}">정규직</c:when>
	                        <c:when test="${jobinfoData.wrkty == '1'}">계약직</c:when>
	                        <c:when test="${jobinfoData.wrkty == '2'}">기간제</c:when>
							<c:otherwise>미정</c:otherwise>
						</c:choose>
					</li>
					<li>급여 : 
	                    <c:choose>
	                        <c:when test="${jobinfoData.salary == null or jobinfoData.salary == ''}">회사 내규에 따름 - 면접 후 결정</c:when>
	                        <c:otherwise>${jobinfoData.salary}</c:otherwise>
	                    </c:choose>
					</li>
	                <li>근무 지역 : ${jobinfoData.loc01}</li>
	                <li>근무 요일/시간 : ${jobinfoData.wrktm}</li>
	            </ul>
	        </div>
	    </div>
		
		<div id="section4">
	        <div class="section-title">복지 및 혜택</div>
	        <div class="job-details">
	            <ul>
	                <li>${jobinfoData.benefits}</li>
	            </ul>
	        </div>
	    </div>
     	
		<div id="section5">
	        <div class="section-title">접수기간 및 방법</div>
	        <div class="job-details">
	            <ul>
	                <li>접수기간/방법 : ${jobinfoData.pamoa}</li>
	                <li>채용 절차 : ${jobinfoData.rcmpcd}</li>
	            </ul>
	        </div>
	    </div>
		<br>
		<div class="apply-button">
			<c:set var="status" value="${status }"/>
			<c:if test="${status == 'p'}">
				<button type="button" onclick="move_show2();">지원 하기</button>
			</c:if>
			<c:if test="${status == 'ps'}">
				<button type="button" onclick="move_mylist();">목록 보기</button>				
			</c:if>
			<c:if test="${status == 'cs'}">
				<button type="button" onclick="move_show();">수정 하기</button>
		        <button type="button" onclick="move_list();">공고 목록 보기</button> <%-- 기존 가는 화면 --%>
			</c:if>
			<c:if test="${status == 'c'}">
	            <button type="button" onclick="move_jobpost();">공고 목록 보기</button> <%-- jobpost 화면 이동 --%>
			</c:if>
		</div>
		
		<div id="resumeModal" class="modal" style="display: none;">
	    <div class="modal-content">
	        <span class="close" onclick="closeModal()">&times;</span>
	        <h2>이력서 선택</h2>
	        <form id="applyForm" method="post" action="applyJob" enctype="multipart/form-data">
	            <input type="hidden" name="jobno" value="${jobinfoData.jobno}">
	            <input type="hidden" name="csrno" value="${jobinfoData.csrno}">
	            <label for="resume">이력서를 선택하세요:</label>
	            <select id="resume" name="resume" required></select>
	            <button type="button" onclick="submitApplication()">제출</button>
	        </form>
	    </div>
	</div>
</div>
</body>
</html>
