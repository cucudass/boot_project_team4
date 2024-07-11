<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta charset="UTF-8">
<title>Hello World</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/style/header/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/style/coinfo/coinfo.css">

<script>
	$(document).ready(function() {
	    var message = "${message}";
	    if (message) {
	        alert(message);
	    }
	});
</script>

</head>
<jsp:include page="../../header.jsp"/>
<body>
<div class="container">
    <c:choose>
        <c:when test="${not empty coinfotb.cuserid}">
            <div class="form-header">
                <h2>기업 정보</h2>
            </div>
			
			<form method="post" action="Coinmodify">
				<table>
					<tr>
		                <td>아이디</td>
		                <td><input type="text" name="cuserid" value="${coinfotb.cuserid}"></td>
		            </tr>         
					<tr>
		                <td>기업정보번호</td>
		                <td><input type="text" name="csrno" value="${coinfotb.csrno}"></td>
		            </tr>         
					<tr>
		                <td>기업 이름</td>
		                <td><input type="text" name="cusnm" value="${coinfotb.cusnm}"></td>
		            </tr>         
					<tr>
		                <td>대표자명</td>
		                <td><input type="text" name="bossnm" value="${coinfotb.bossnm}"></td>
		            </tr>         
					<tr>
		                <td>위치</td>
		                <td><input type="text" name="loc01" value="${coinfotb.loc01}"></td>
		            </tr>         
					<tr>
		                <td>상세주소</td>
		                <td><input type="text" name="loc02" value="${coinfotb.loc02}"></td>
		            </tr>         
					<tr>
		                <td>업력</td>
		                <td><input type="text" name="indue" value="${coinfotb.indue}"></td>
		            </tr>         
					<tr>
		                <td>업종</td>
		                <td><input type="text" name="deptno" value="${coinfotb.deptno}"></td>
		            </tr>         
					<tr>
		                <td>사원수</td>
		                <td><input type="text" name="emnum" value="${coinfotb.emnum}"></td>
		            </tr>         
					<tr>
		                <td>사업내용</td>
		                <td><input type="text" name="binfo" value="${coinfotb.binfo}"></td>
		            </tr>         
					<tr>
		                <td colspan="2" class="coinfo_adate">
							<fmt:formatDate value="${coinfotb.adate}" pattern="yyyy-MM-dd HH시 mm분" />에 작성됨
						</td>
		            </tr>         
				</table>
	                <button type="submit" id="modifybutton" class="modifycomplete">수정하기</button>
            </form>
        </c:when>
        <c:otherwise>
            <div class="form-header">
                <h2>기업 정보</h2>
            </div>
            <form method="post" action="insert">
				<table>
					<tr>
						<td>
							<input type="text" name="cuserid" placeholder="아이디를 입력해주세요" required>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="csrno" placeholder="기업정보번호를 입력해주세요" required>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="cusnm" placeholder="기업 이름을 입력해주세요" required>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="bossnm" placeholder="대표자명을 입력해주세요" required>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="loc01" placeholder="위치를 입력해주세요" required>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="loc02" placeholder="상세주소를 입력해주세요" required>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="indue" placeholder="업력을 입력해주세요" required>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="deptno" placeholder="업종을 입력해주세요" required>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="emnum" placeholder="사원수를 입력해주세요" required>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="binfo" placeholder="사업내용을 입력해주세요" required>
						</td>
					</tr>
				</table>
                <button type="submit" id="insertbutton" class="insertcomplete">등록하기</button>
            </form>
        </c:otherwise>
    </c:choose>
</div>
</body>
</html>