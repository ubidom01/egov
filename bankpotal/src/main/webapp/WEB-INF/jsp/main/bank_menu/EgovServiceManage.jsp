<%--
  Class Name : EgovServiceManage.jsp
  Description : 샘플화면 - 민원신청내역화면(sample)
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import ="bankscan.com.cmm.LoginVO" %>
<%
   String loginName = "";
   LoginVO loginVO = (LoginVO)session.getAttribute("LoginVO");
   if(loginVO != null){
	   loginName = loginVO.getName();
   }
%>

<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>생활금융 플랫폼</title>
<link rel="icon" href="<c:url value='/'/>img/mdb-favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<link rel="stylesheet" href="<c:url value='/'/>css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value='/'/>css/mdb.min.css">
<link rel="stylesheet" href="<c:url value='/'/>css/style.css"> 
<!-- link rel="stylesheet" href="<c:url value='/'/>css/default.css" --><!-- egovframework용 -->
</head>
<body>
<noscript><p>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</p></noscript>
  <!--Main Navigation-->
  <header>
    <div id="header"><c:import url="/sym/mms/EgovMainMenuHead.do?flag=MAIN" /></div>
  </header>
  <!--Main Navigation-->

  <!--Main layout-->
  <main class="mt-4 pt-4">
     <div class="container">

      <!--Section: Jumbotron-->
      <section class="blue-gradient color-block mb-3 mx-auto z-depth-1">
        <!-- Content -->
        <div class="card-body text-white text-center py-5 px-5 my-5">

          <h1 class="mb-4">
            <strong>민원광장</strong>
          </h1>
          <p>
            <strong>고객의 민원을 접수하고 처리결과를 공유합니다</strong>
          </p>
        </div>
        <!-- Content -->
      </section>
      <!--Section: Jumbotron-->

      <hr class="my-5">

      <!--Section: Cards-->
      <section class="text-center">
		<ul class="nav nav-tabs" id="myTab" role="tablist">
		  <li class="nav-item">
		    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home"
		      aria-selected="true">민원신청내역</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
		      aria-selected="false">민원처리내역</a>
		  </li>
		</ul>      
		<div class="tab-content" id="myTabContent">
		  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
	         <div id="content_field">
	                <div><h2>민원신청내역</h2></div>
	                <p>검색기간을 입력한 후 확인하시기 바랍니다.</p>
	                <div class="search_service">
	                    <div class="search_area">                   
	                        <form action="" id="SubTopSearch1"name="SubTopSearch1" method="post">
	                            <span class="search_txt">기간별 검색</span>
	                            <select id="subsearchYear" name="subsearchYear" style="width:70px;">
	                                <option value="">2011</option>
	                            </select>
	                            <select id="subsearchMonth" name="subsearchMonth" style="width:50px;">
	                                <option value="">08</option>
	                            </select>
	                            <select id="subsearchDay" name="subsearchDay" style="width:50px;">
	                                <option value="">21</option>
	                            </select>
	                            <span class="search_txt">부터~</span>
	                            <select id="subsearchYearNew" name="subsearchYearNew">
	                                <option value="">2011</option>
	                            </select>
	                            <select id="subsearchMonthNew" name="subsearchMonthNew">
	                                <option value="">08</option>
	                            </select>
	                            <select id="subsearchDayNMew" name="subsearchDayNMew">
	                                <option value="">21</option>
	                            </select><span class="search_txt">까지</span>
	                            <button class="btnSearch" title="검색" type="submit">&nbsp;</button>                
	                        </form>
	                    </div>
	                </div>
	            </div>
	            <div class="search_result_div">
	              <table class="table table-striped">
	                    <caption>민원신청내역</caption>
	                    <colgroup>
	                        <col> 
	                        <col>  
	                        <col>
	                        <col >
	                        <col>
	                        <col>
	                        <col>
	                    </colgroup>
	                    <thead>
	                    <tr>
	                        <th>민원접수번호[신청일]</th>
	                        <th>민원사무명</th>
	                        <th>부수</th>
	                        <th>처리상태</th>
	                        <th>교부기관</th>
	                        <th>연락처</th>
	                        <th>추가신청</th>
	                    </tr>
	                    </thead>
	                    <tbody>                 
	                    <!-- loop 시작 -->                                
	                    <tr>
	                        <td>2011-08-11</td>
	                        <td>대출 신청서 접수</td>
	                        <td>300</td>
	                        <td>발급대기</td>
	                        <td>신한은행</td>
	                        <td>1544-5555</td>
	                        <td>신청</td>
	                    </tbody>
	              </table>    
	            </div>
	            <!-- 페이지 네비게이션 시작 -->
	            <nav aria-label="Page navigation example">
			        <ul class="pagination pg-blue">		    				 
	                    <li class="first"><img src="<c:url value='/'/>images/btn_prev.gif" alt="prev" /></li>
	                    <li class="page-item"><a class="page-link">1</a></li>
	                    <li class="page-item"><a class="page-link">2</a></li>
	                    <li class="page-item"><a class="page-link">3</a></li>
	                    <li class="page-item"><a class="page-link">4</a></li>
	                    <li class="page-item"><a class="page-link">5</a></li>
	                    <li class="first"><img src="<c:url value='/'/>images/btn_next.gif" alt="next" /></li>
				    </ul>
			    </nav>
	            <!-- //페이지 네비게이션 끝 -->
	          </div>  
		 
		  
		  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
		  민원 처리내역이 없습니다.
		  </div>
		</div>

        </div> <!-- //container -->

    </div>
  </main>
  <!--Main layout-->

  <!-- footer 시작 -->
  <div id="footer"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" /></div>
  <!-- //footer 끝 -->
</body>
</html>





