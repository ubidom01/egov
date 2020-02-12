<%--
  Class Name : EgovMberSelectUpdt.jsp
  Description : 일반회원상세조회, 수정 JSP
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
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
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

<title>회원 상세 및 수정</title>
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="mberManageVO" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javascript" src="<c:url value='/js/EgovZipPopup.js' />" ></script>
<script type="text/javaScript" language="javascript" defer="defer">
<!--
function fnListPage(){
    document.mberManageVO.action = "<c:url value='/uss/umt/mber/EgovMberManage.do'/>";
    document.mberManageVO.submit();
}
function fnDeleteMber(checkedIds) {
    if(confirm("<spring:message code='common.delete.msg' />")){
        document.mberManageVO.checkedIdForDel.value=checkedIds;
        document.mberManageVO.action = "<c:url value='/uss/umt/mber/EgovMberDelete.do'/>";
        document.mberManageVO.submit(); 
    }
}
function fnPasswordMove(){
    document.mberManageVO.action = "<c:url value='/uss/umt/mber/EgovMberPasswordUpdtView.do'/>";
    document.mberManageVO.submit();
}
function fnUpdate(){
	document.mberManageVO.action = "<c:url value='/uss/umt/mber/EgovMberSelectUpdt.do'/>";
    if(validateMberManageVO(document.mberManageVO)){
        document.mberManageVO.submit();
    }
}
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
            
            
            <form:form commandName="mberManageVO" name="mberManageVO"  method="post" >
            
            <!-- 상세정보 사용자 삭제시 prameter 전달용 input -->
            <input name="checkedIdForDel" type="hidden" />
            <!-- 검색조건 유지 -->
            <input type="hidden" name="searchCondition" value="<c:out value='${userSearchVO.searchCondition}'/>"/>
            <input type="hidden" name="searchKeyword" value="<c:out value='${userSearchVO.searchKeyword}'/>"/>
            <input type="hidden" name="sbscrbSttus" value="<c:out value='${userSearchVO.sbscrbSttus}'/>"/>
            <input type="hidden" name="pageIndex" value="<c:out value='${userSearchVO.pageIndex}'/>"/>
            <!-- 우편번호검색 -->
            <input type="hidden" name="zip_url" value="<c:url value='/sym/cmm/EgovCcmZipSearchPopup.do'/>" />
            <!-- 사용자유형정보 : password 수정화면으로 이동시 타겟 유형정보 확인용, 만약검색조건으로 유형이 포함될경우 혼란을 피하기위해 userTy명칭을 쓰지 않음-->
            <input type="hidden" name="userTyForPassword" value="<c:out value='${mberManageVO.userTy}'/>" />
        
            <!-- sub title start -->
            <div><h2>일반회원 상세조회(수정)</h2></div>
            <!-- sub title end -->
            
            <!--detail area start -->
            <div class="search_service">
                <div class="search_top_table">                  
                    <table class="table" summary="일반회원정보 상세조회">
                        <tr> 
                            <td class="td_width"><label for="mberId">일반회원아이디</label>
                                <img src="<c:url value='/'/>images/required.gif" alt="필수항목" title="필수항목" width="15" height="15"/>
                            </td>
                            <td class="td_content">
                                <form:input path="mberId" id="mberId" size="20" cssClass="txaIpt" readonly="readonly" maxlength="20" />
                                <form:errors path="mberId" cssClass="error" />
                                <form:hidden path="uniqId" />
                            </td>
                        </tr>
                        <tr> 
                            <td class="td_width"><label for="mberNm">일반회원이름</label>
                                <img src="<c:url value='/'/>images/required.gif" alt="필수항목" title="필수항목" width="15" height="15"/>
                            </td>
                            <td class="td_content">
                                <form:input path="mberNm" id="mberNm" cssClass="txaIpt" size="20" maxlength="60" />
                                <form:errors path="mberNm" cssClass="error" />
                            </td>
                        </tr>
                        <tr> 
                            <td class="td_width"><label for="passwordHint">비밀번호힌트</label>
                                <img src="<c:url value='/'/>images/required.gif" alt="필수항목" title="필수항목" width="15" height="15"/>
                            </td>
                            <td class="td_content">
                                <form:select path="passwordHint" id="passwordHint">
                                    <form:option value="" label="--선택하세요--"/>
                                    <form:options items="${passwordHint_result}" itemValue="code" itemLabel="codeNm"/>
                                </form:select>
                                <form:errors path="passwordHint" cssClass="error"/>
                                </td>
                        </tr>
                        <tr> 
                            <td class="td_width"><label for="passwordCnsr">비밀번호정답</label>
                                <img src="<c:url value='/'/>images/required.gif" alt="필수항목" title="필수항목" width="15" height="15"/>
                            </td>
                            <td class="td_content">
                                <form:input path="passwordCnsr" id="passwordCnsr" cssClass="txaIpt" size="50" maxlength="100" />
                                <form:errors path="passwordCnsr" cssClass="error"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_width"><label for="sexdstnCode">성별구분코드</label></td>
                            <td class="td_content">
                                <form:select path="sexdstnCode" id="sexdstnCode">
                                    <form:option value="" label="--선택하세요--"/>
                                    <form:options items="${sexdstnCode_result}" itemValue="code" itemLabel="codeNm"/>
                                </form:select>
                            </td>
                        </tr>
                        <tr> 
                            <td class="td_width"><label for="areaNo">전화번호</label></td>
                            <td class="td_content">
                                <form:input path="areaNo" id="areaNo" cssClass="txaIpt" size="4" maxlength="4" />
                                - <form:input path="middleTelno" id="middleTelno" cssClass="txaIpt" size="4" maxlength="4" />
                                - <form:input path="endTelno" id="endTelno" cssClass="txaIpt" size="4" maxlength="4" />
                                <form:errors path="areaNo" cssClass="error" />
                                <form:errors path="middleTelno" cssClass="error" />
                                <form:errors path="endTelno" cssClass="error" />
                            </td>
                        </tr>
                        <tr> 
                            <td class="td_width"><label for="mberFxnum">팩스번호</label></td>
                            <td class="td_content">
                                <form:input path="mberFxnum" id="mberFxnum" cssClass="txaIpt" size="20"  maxlength="15" />
                                <form:errors path="mberFxnum" cssClass="error" />
                            </td>
                        </tr>
                        <tr> 
                            <td class="td_width"><label for="moblphonNo">핸드폰번호</label></td>
                            <td class="td_content">
                                <form:input path="moblphonNo" id="moblphonNo" cssClass="txaIpt" size="20" maxlength="15" />
                                <form:errors path="moblphonNo" cssClass="error" />
                            </td>
                        </tr>
                        <tr>
                            <td class="td_width"><label for="mberEmailAdres">이메일주소</label></td>
                            <td class="td_content">
                                <form:input path="mberEmailAdres" id="mberEmailAdres" cssClass="txaIpt" size="30" maxlength="50" />
                                <form:errors path="mberEmailAdres" cssClass="error" />
                            </td>
                        </tr>
                        <tr> 
                            <td class="td_width"><label for="zip_view">우편번호</label></td>
                            <td class="td_content">
                                <input name="zip_view" id="zip_view" type="text" size="20" value="<c:out value='${mberManageVO.zip}'/>" maxlength="8" readonly="readonly" />
                                <form:hidden path="zip" />
                                    <a href="#LINK" onclick="fn_egov_ZipSearch(document.mberManageVO, document.mberManageVO.zip, document.mberManageVO.zip_view, document.mberManageVO.adres);">
                                        <img src="<c:url value='/images/img_search.gif'/>" alt="우편번호 검색"/>(우편번호 검색)
                                    </a>
                                <form:errors path="zip" cssClass="error" />
                            </td>
                        </tr>
                        <tr>
                            <td class="td_width"><label for="adres">주소</label></td>
                            <td class="td_content">
                                <form:input path="adres" id="adres" cssClass="txaIpt" size="70" maxlength="100" readonly="true" />
                                <form:errors path="adres" cssClass="error" />
                            </td>
                        </tr>
                        <tr> 
                            <td class="td_width"><label for="detailAdres">상세주소</label></td>
                            <td class="td_content">
                                <form:input path="detailAdres" id="detailAdres" cssClass="txaIpt" size="70" maxlength="100" />
                                <form:errors path="detailAdres" cssClass="error" />
                            </td>
                        </tr>
                        <tr> 
                            <td class="td_width"><label for="groupId">그룹아이디</label>
                                <img src="<c:url value='/'/>images/required.gif" alt="필수항목" title="필수항목" width="15" height="15"/>
                            </td>
                            <td class="td_content">
                                <form:select path="groupId" id="groupId">
                                    <form:option value="" label="--선택하세요--"/>
                                    <form:options items="${groupId_result}" itemValue="code" itemLabel="codeNm"/>
                                </form:select>
                                <form:errors path="groupId" cssClass="error"/>
                            </td>
                        </tr>
                        <tr> 
                            <td class="td_width"><label for="mberSttus">일반회원상태코드</label>
                                <img src="<c:url value='/'/>images/required.gif" alt="필수항목" title="필수항목" width="15" height="15"/>
                            </td>
                            <td class="td_content">
                                <form:select path="mberSttus" id="mberSttus">
                                    <form:option value="" label="--선택하세요--"/>
                                    <form:options items="${mberSttus_result}" itemValue="code" itemLabel="codeNm"/>
                                </form:select>
                                <form:errors path="mberSttus" cssClass="error"/>
                            </td>
                        </tr>
                        
                    </table>
                </div>
            </div>
            <!--detail area end -->
                    
            <!-- 목록/저장버튼  시작-->
            <table border="0" cellspacing="0" cellpadding="0" align="center"><tr><td>
            <div class="buttons" align="center" style="margin-bottom:100px">
                <!-- 수정 -->
                <input type="submit" value="<spring:message code="button.save" />" onclick="fnUpdate(); return false;" />
                <!-- 삭제 -->
                <a href="<c:url value='/uss/umt/mber/EgovMberManage.do'/>" onclick="fnDeleteMber('<c:out value='${mberManageVO.userTy}'/>:<c:out value='${mberManageVO.uniqId}'/>'); return false;"><spring:message code="button.delete" /></a>
                <!-- 목록 -->
                <a href="<c:url value='/uss/umt/mber/EgovMberManage.do'/>" onclick="fnListPage(); return false;"><spring:message code="button.list" /></a>
                <!-- 암호변경 -->
                <a href="<c:url value='/uss/umt/mber/EgovMberPasswordUpdtView.do'/>" onclick="fnPasswordMove(); return false;"><spring:message code="button.passwordUpdate" /></a>
                <!-- 취소 -->
                <a href="#LINK" onclick="javascript:document.mberManageVO.reset();"><spring:message code="button.reset" /></a>
            </div>
            </td></tr></table>
            <!-- 목록/저장버튼  끝-->
            <form:hidden path="password" />
            </form:form>

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