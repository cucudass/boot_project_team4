<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/style/main/main.css">
<html>
<head>
<meta charset="UTF-8">
<title>Job Postings</title>
</head>
<jsp:include page="../header.jsp"/>
<body>
    <div id="monthRecommend">
        <h1>이 달의 추천 공고</h1>
    </div>

    </div>
    <div id="recruitWrap" class="recruitWrap">
        <div id="loading dev-wrap-loading"></div>
        <div class="secContents">
            <div id="searchLog"></div>
            <div id="searchList" class="recruitList">
                <c:forEach items="${main}" var="list" varStatus="loop">
                    <!-- 매 5개마다 새로운 ul 열기 -->
                    <c:if test="${loop.index % 5 == 0}">
                        <ul>
                    </c:if>         
                    <li style="list-style-type: none">
                        <a href="/recruitshowform?writer=${list.cuserid}&csrno=${list.csrno}&jobno=${list.jobno}" class="listCell" target="_blank">
                            <div class="listLogo">
                                <img src="../../../resources/img/modelS.jpg">
                            </div>
                            <div class="listContent">
                                <div class="Content">
                                    <span class="cName">${list.cusnm}</span>
                                </div>
                            </div>
                            <div class="listTitle">${list.jobtitle}</div>
                            <div class="listInfo">
                                <span class="Position">${list.position}</span>
                                <span class="partition">|</span>
                                <span class="Addr">${list.caddr}</span>
                            </div>
                            <div class="listSkill">
                                <span class="Skill">
                                    <c:forEach items="${list.skills.split(',')}" var="skills">
                                        <span class="tag tag-skill">${skills}</span>
                                    </c:forEach>
                                </span>
                            </div>
                        </a>
                    </li>                
                    <!-- 매 5개마다 ul 닫기 -->
                    <c:if test="${loop.index % 5 == 4 or loop.last}">
                        </ul>
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </div>
</body>
<jsp:include page="../footer.jsp"/>
</html>
