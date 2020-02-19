<%--
  Class Name : EgovUserManage.jsp
  Description : 사용자관리(조회,삭제) JSP
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2009.03.02  JJY          최초 생성
     2011.08.31  JJY       경량환경 버전 생성
 
    author   : 공통서비스 개발팀 JJY
    since    : 2009.03.02
--%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
<meta http-equiv="content-language" content="ko">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<link rel="icon" href="<c:url value='/'/>img/mdb-favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<link rel="stylesheet" href="<c:url value='/'/>css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value='/'/>css/mdb.min.css">
<link rel="stylesheet" href="<c:url value='/'/>css/style.css"> 

<title>회원 목록</title>
<script type="text/javaScript" language="javascript" defer="defer">
<!--
function fnCheckAll() {
    var checkField = document.listForm.checkField;
    if(document.listForm.checkAll.checked) {
        if(checkField) {
            if(checkField.length > 1) {
                for(var i=0; i < checkField.length; i++) {
                    checkField[i].checked = true;
                }
            } else {
                checkField.checked = true;
            }
        }
    } else {
        if(checkField) {
            if(checkField.length > 1) {
                for(var j=0; j < checkField.length; j++) {
                    checkField[j].checked = false;
                }
            } else {
                checkField.checked = false;
            }
        }
    }
}
function fnDeleteUser() {
    var checkField = document.listForm.checkField;
    var id = document.listForm.checkId;
    var checkedIds = "";
    var checkedCount = 0;
    if(checkField) {
        if(checkField.length > 1) {
            for(var i=0; i < checkField.length; i++) {
                if(checkField[i].checked) {
                    checkedIds += ((checkedCount==0? "" : ",") + id[i].value);
                    checkedCount++;
                }
            }
        } else {
            if(checkField.checked) {
                checkedIds = id.value;
            }
        }
    }
    if(checkedIds.length > 0) {
    	//alert(checkedIds);
        if(confirm("<spring:message code="common.delete.msg" />")){
        	document.listForm.checkedIdForDel.value=checkedIds;
            document.listForm.action = "<c:url value='/uss/umt/EgovMberDelete.do'/>";
            document.listForm.submit();
        }
    }
}
function fnSelectUser(id) {
	document.listForm.selectedId.value = id;
	array = id.split(":");
	if(array[0] == "") {
	} else {
	    userTy = array[0];
	    userId = array[1];    
	}
	document.listForm.selectedId.value = userId;
    document.listForm.action = "<c:url value='/uss/umt/EgovMberSelectUpdtView.do'/>";
    document.listForm.submit();
}
function fnAddUserView() {
    document.listForm.action = "<c:url value='/uss/umt/EgovMberInsertView.do'/>";
    document.listForm.submit();
}
function fnLinkPage(pageNo){
    document.listForm.pageIndex.value = pageNo;
    document.listForm.action = "<c:url value='/uss/umt/EgovMberManage.do'/>";
    document.listForm.submit();
}
function fnSearch(){
	document.listForm.pageIndex.value = 1;
	document.listForm.action = "<c:url value='/uss/umt/EgovMberManage.do'/>";
    document.listForm.submit();
}
<c:if test="${!empty resultMsg}">alert("<spring:message code="${resultMsg}" />");</c:if>
//-->
</script>
</head>
<body>
<!-- 자바스크립트 경고 태그  -->
<noscript><p>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</p></noscript>
  <!--Main Navigation-->
  <header>
    <div id="header"><c:import url="/sym/mms/EgovMainMenuHead.do?flag=MAIN" /></div>
  </header>
  <!--Main Navigation-->

  <!--Main layout-->
  <main class="mt-5 pt-5">
     <div class="container">

      <!--Section: Jumbotron-->
      <section class="card wow fadeIn" style="background-image: url(<c:url value='/'/>images/gradient1.jpg);">

        <!-- Content -->
        <div class="card-body text-white text-center py-5 px-5 my-5">
          <h1 class="mb-4"><strong>시스템 관리</strong></h1>
          <p>
            <strong>회원을 관리합니다</strong>
          </p>
        </div>
        <!--// Content -->
      </section>
      <!--//Section: Jumbotron-->
     
      <!--Section: Cards-->
      <section class="text-center">
        <!--Grid row-->
        <div class="row mb-4 wow fadeIn">
        

            <div id="content_field"><!--contents start-->
        
        
            <!-- sub title start -->
            <div><h2>일반회원관리</h2></div>
            <!-- sub title end -->
            
	        <!-- content start -->
	        <form name="listForm" action="/uss/umt/mber/EgovMberManage.do" method="post">
	        <input name="selectedId" type="hidden" />
	        <input name="checkedIdForDel" type="hidden" />
	        <input name="pageIndex" type="hidden" value="<c:out value='${userSearchVO.pageIndex}'/>"/>
	        
	        <!-- search area start-->
            <div class="search_service">
                <div class="search_area">
                <div class="search_conditions" >                   
                    <select name="sbscrbSttus" id="sbscrbSttus" title="조회조건1">
                        <option value="0" <c:if test="${empty userSearchVO.sbscrbSttus || userSearchVO.sbscrbSttus == '0'}">selected="selected"</c:if> >상태(전체)</option>
                        <option value="A" <c:if test="${userSearchVO.sbscrbSttus == 'A'}">selected="selected"</c:if> >가입신청</option>
                        <option value="D" <c:if test="${userSearchVO.sbscrbSttus == 'D'}">selected="selected"</c:if> >삭제</option>
                        <option value="P" <c:if test="${userSearchVO.sbscrbSttus == 'P'}">selected="selected"</c:if> >승인</option>
                        </select>
                    <select name="searchCondition" id="searchCondition" title="조회조건2">
                        <option value="0" <c:if test="${userSearchVO.searchCondition == '0'}">selected="selected"</c:if> >ID</option>
                        <option value="1" <c:if test="${empty userSearchVO.searchCondition || userSearchVO.searchCondition == '1'}">selected="selected"</c:if> >Name</option>
                    </select>
                    <input name="searchKeyword" id="searchKeyword" title="검색" type="text" value="<c:out value="${userSearchVO.searchKeyword}"/>" />
                </div>
                <div class="search_buttons">
                    <!-- 검색 -->
                    <input type="submit" value="<spring:message code="button.search" />" onclick="fnSearch(); return false;" />
                    <!-- 삭제 -->
                    <a href="#LINK" onclick="fnDeleteUser(); return false;"><spring:message code="button.delete" /></a>
                    <!-- 목록 -->
                    <a href="<c:url value='/uss/umt/mber/EgovMberManage.do'/>" ><spring:message code="button.list" /></a>
                    <!-- 등록 -->
                    <a href="<c:url value='/uss/umt/mber/EgovMberInsertView.do'/>" onclick="fnAddUserView(); return false;"><spring:message code="button.create" /></a>
                </div>
                </div> 
            </div>
            <!-- search area end -->
            
	        <div>사용자수 <strong><c:out value="${paginationInfo.totalRecordCount}"/></strong></div>

            <!-- search result start -->
            <div class="search_result_div">
            
                <table class="table" summary="회원목록">
                <caption>회원목록</caption>
                
                <colgroup>
                    <col width="5%" > 
                    <col width="5%" >  
                    <col width="10%" >
                    <col width="10%" >
                    <col width="15%" > 
                    <col width="15%" >  
                    <col width="20%" >
                    <col width="20%" >
                </colgroup>
                
                <thead>
                <tr>      
                    <th class="title" scope="col">No.</th>
                    <th class="title" scope="col">
                        <input name="checkAll" type="checkbox" title="Check All" onclick="javascript:fnCheckAll();"/>
                    </th>
                    <th class="title" scope="col">아이디</th>
                    <th class="title" scope="col">사용자이름</th>
                    <th class="title" scope="col">사용자이메일</th>
                    <th class="title" scope="col">전화번호</th>
                    <th class="title" scope="col">등록일</th>
                    <th class="title" scope="col">가입상태</th>          
                </tr>
                </thead>
                
                <tbody>
                <c:if test="${fn:length(resultList) == 0}">
                <tr> 
                      <td class="lt_text3" colspan="8">
                          <spring:message code="common.nodata.msg" />
                      </td>
                </tr>                                                 
                </c:if>
                <c:forEach var="result" items="${resultList}" varStatus="status">
                    <tr>
                        <td class="lt_text3" ><c:out value="${status.count}"/></td>
                        <td class="lt_text3" >
                            <input name="checkField" title="checkField <c:out value="${status.count}"/>" type="checkbox"/>
                            <input name="checkId" type="hidden" value="<c:out value='${result.userTy}'/>:<c:out value='${result.uniqId}'/>"/>
                        </td>
                        <td class="lt_text3" style="cursor:pointer;cursor:hand" >
                            <span class="link"><a href="<c:url value='/uss/umt/mber/EgovMberSelectUpdtView.do'/>?selectedId=<c:out value="${result.uniqId}"/>"  onclick="javascript:fnSelectUser('<c:out value="${result.userTy}"/>:<c:out value="${result.uniqId}"/>'); return false;"><c:out value="${result.userId}"/></a></span>
                        </td>
                        <td class="lt_text3" ><c:out value="${result.userNm}"/></td>
                        <td class="lt_text3" ><c:out value="${result.emailAdres}"/></td>
                        <td class="lt_text3" ><c:out value="${result.areaNo}"/>)<c:out value="${result.middleTelno}"/>-<c:out value="${result.endTelno}"/></td>
                        <td class="lt_text3" ><c:out value="${result.sbscrbDe}"/></td>
                        <td class="lt_text3" >
                            <c:forEach var="entrprsMberSttus_result" items="${entrprsMberSttus_result}" varStatus="status">
                                <c:if test="${result.sttus == entrprsMberSttus_result.code}"><c:out value="${entrprsMberSttus_result.codeNm}"/></c:if>
                            </c:forEach>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
                  
                </table>
            </div>
            <!-- search result end -->
            
	        
	        <!--  page start -->
	        <div id="paging_div">
	                <div id="pagination"><ul class="paging_align">
	                <ui:pagination paginationInfo = "${paginationInfo}"
	                    type="image"
	                    jsFunction="fnLinkPage"
	                    /></ul>
	                </div>  
	        </div>
	        <br/>
	        <!--  page end -->
	        </form>
        
            </div><!-- contents end -->
        </div>
        <!--//Grid row-->
      </section>
      <!--//Section: Cards-->
    </div> <!--//container -->
  </main>
  <!--Main layout-->

  <!-- footer 시작 -->
  <div id="footer"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" /></div>
  <!-- //footer 끝 -->
</body>
</html>
