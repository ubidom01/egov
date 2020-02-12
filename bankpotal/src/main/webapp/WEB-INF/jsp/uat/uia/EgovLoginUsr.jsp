<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : EgovLoginUsr.jsp
  * @Description : Login 인증 화면
  * @Modification Information
  * @
  * @  수정일         수정자                   수정내용
  * @ -------    --------    ---------------------------
  * @ 2009.03.03    박지욱          최초 생성
  * @ 2011.09.25    서준식          사용자 관리 패키지가 미포함 되었을때에 회원가입 오류 메시지 표시
  * @ 2011.10.27    서준식          사용자 입력 탭 순서 변경
  * @ 2017.07.21    장동한 	    	로그인인증제한 작업
  *
  *  @author 공통서비스 개발팀 박지욱
  *  @since 2009.03.03
  *  @version 1.0
  *  @see
  *
  *  Copyright (C) 2009 by MOPAS  All right reserved.
  */
%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>로그인</title>
<link rel="icon" href="<c:url value='/'/>img/mdb-favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<link rel="stylesheet" href="<c:url value='/'/>css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value='/'/>css/mdb.min.css">
<link rel="stylesheet" href="<c:url value='/'/>css/style.css"> 
<!-- link rel="stylesheet" href="<c:url value='/'/>css/default.css" --><!-- egovframework용 -->

<script type="text/javascript" src="<c:url value='/js/showModalDialog.js'/>" ></script>

<script type="text/javaScript" language="javascript">
function checkLogin(userSe) {
    // 일반회원
    if (userSe == "GNR") {
        document.loginForm.rdoSlctUsr[0].checked = true;
        document.loginForm.rdoSlctUsr[1].checked = false;
        document.loginForm.rdoSlctUsr[2].checked = false;
        document.loginForm.userSe.value = "GNR";
    // 기업회원
    } else if (userSe == "ENT") {
        document.loginForm.rdoSlctUsr[0].checked = false;
        document.loginForm.rdoSlctUsr[1].checked = true;
        document.loginForm.rdoSlctUsr[2].checked = false;
        document.loginForm.userSe.value = "ENT";
    // 업무사용자
    } else if (userSe == "USR") {
        document.loginForm.rdoSlctUsr[0].checked = false;
        document.loginForm.rdoSlctUsr[1].checked = false;
        document.loginForm.rdoSlctUsr[2].checked = true;
        document.loginForm.userSe.value = "USR";
    }
}

function actionLogin() {
	if (document.loginForm.id.value =="") {
        alert("<spring:message code="comUatUia.validate.idCheck" />"); <%-- 아이디를 입력하세요 --%>
    } else if (document.loginForm.password.value =="") {
        alert("<spring:message code="comUatUia.validate.passCheck" />"); <%-- 비밀번호를 입력하세요 --%>
    } else {
        document.loginForm.action="<c:url value='/uat/uia/actionLogin.do'/>";
        //document.loginForm.action="<c:url value='/uat/uia/actionSecurityLogin.do'/>";
        //document.loginForm.j_username.value = document.loginForm.userSe.value + document.loginForm.username.value;
        //document.loginForm.action="<c:url value='/j_spring_security_check'/>";
        document.loginForm.submit();
    }
}

function actionCrtfctLogin() {
    document.defaultForm.action="<c:url value='/uat/uia/actionCrtfctLogin.do'/>";
    document.defaultForm.submit();
}

function goFindId() {
    document.defaultForm.action="<c:url value='/uat/uia/egovIdPasswordSearch.do'/>";
    document.defaultForm.submit();
}

function goRegiUsr() {
	
	var useMemberManage = '${useMemberManage}';

	if(useMemberManage != 'true'){
		<%-- 사용자 관리 컴포넌트가 설치되어 있지 않습니다. \n관리자에게 문의하세요. --%>
		alert("<spring:message code="comUatUia.validate.userManagmentCheck" />");
		return false;
	}

    var userSe = document.loginForm.userSe.value;
 
    // 일반회원
    if (userSe == "GNR") {
        document.loginForm.action="<c:url value='/uss/umt/EgovStplatCnfirmMber.do'/>";
        document.loginForm.submit();
    // 기업회원
    } else if (userSe == "ENT") {
        document.loginForm.action="<c:url value='/uss/umt/EgovStplatCnfirmEntrprs.do'/>";
        document.loginForm.submit();
    // 업무사용자
    } else if (userSe == "USR") {
    	<%-- 업무사용자는 별도의 회원가입이 필요하지 않습니다. --%>
        alert("<spring:message code="comUatUia.validate.membershipCheck" />");
    }
}

function goGpkiIssu() {
    document.defaultForm.action="<c:url value='/uat/uia/egovGpkiIssu.do'/>";
    document.defaultForm.submit();
}

function setCookie (name, value, expires) {
    document.cookie = name + "=" + escape (value) + "; path=/; expires=" + expires.toGMTString();
}

function getCookie(Name) {
    var search = Name + "=";
    if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면
        offset = document.cookie.indexOf(search);
        if (offset != -1) { // 쿠키가 존재하면
            offset += search.length;
            // set index of beginning of value
            end = document.cookie.indexOf(";", offset);
            // 쿠키 값의 마지막 위치 인덱스 번호 설정
            if (end == -1)
                end = document.cookie.length;
            return unescape(document.cookie.substring(offset, end));
        }
    }
    return "";
}

function saveid(form) {
    var expdate = new Date();
    // 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
    if (form.checkId.checked)
        expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
    else
        expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제조건
    setCookie("saveid", form.id.value, expdate);
}

function getid(form) {
    form.checkId.checked = ((form.id.value = getCookie("saveid")) != "");
}

function fnInit() {
	/* if (document.getElementById('loginForm').message.value != null) {
	    var message = document.getElementById('loginForm').message.value;
	} */
    /* if (${message} != "") {
        alert(${message});
    } */

    /* *************************
    document.loginForm.rdoSlctUsr[0].checked = false;
    document.loginForm.rdoSlctUsr[1].checked = false;
    document.loginForm.rdoSlctUsr[2].checked = true;
    document.loginForm.userSe.value = "USR";
    document.loginForm.id.value="TEST1";
    document.loginForm.password.value="rhdxhd12";
    **************************** */

    //getid(document.loginForm);
    // 포커스
    //document.loginForm.rdoSlctUsr.focus();
    
    getid(document.loginForm);
    
    fnLoginTypeSelect("typeGnr");
    
    <c:if test="${not empty fn:trim(message) &&  message ne ''}">
    alert("${message}");    
    </c:if>
    
}

function fnLoginTypeSelect(objName){

		document.getElementById("typeGnr").className = "";
		document.getElementById("typeEnt").className = "";
		document.getElementById("typeUsr").className = "";
		
		document.getElementById(objName).className = "on";
		
		if(objName == "typeGnr"){ //일반회원
			document.loginForm.userSe.value = "GNR";
		}else if(objName == "typeEnt"){	//기업회원
			 document.loginForm.userSe.value = "ENT";
		}else if(objName == "typeUsr"){	//업무사용자
			 document.loginForm.userSe.value = "USR";
		}
	
}

function fnShowLogin(stat) {
	if (stat < 1) {	//일반로그인
		$(".login_input").eq(0).show();
		$(".login_input").eq(1).hide();
	} else {		//공인인증서 로그인
		$(".login_input").eq(0).hide();
		$(".login_type").hide();
		$(".login_input").eq(1).show();
	}
}

</script>

</head>

<body onLoad="fnInit()">

<noscript><p>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</p></noscript>

  <c:import url="/sym/mms/EgovMainMenuHead.do?flag=MAIN" />
  
  <!--Main layout-->
  <main class="mt-5 pt-5">
    <div class="container">
    <div class="row">
    <div class="col-sm"></div>
    
    <div class="col-sm">
        <div id="info" class="alert alert-danger" role="alert">${message}</div>

        <!-- Default form login -->
        <form class="text-center border border-light p-5" name="loginForm" action ="<c:url value='/uat/uia/actionSecurityLogin.do'/>" method="post">
        
        	<div style="visibility:hidden;display:none;">
	            <input name="iptSubmit1" type="submit" value="전송" title="전송" />
	        </div> 
	        <input type="hidden" name="message" value="${message}" />        
	            
            <p class="h4 mb-4">로그인</p>
            
		<div class="login_type">
			<ul id="ulLoginType">
				<li><a href="javascript:fnLoginTypeSelect('typeGnr');" id="typeGnr" title=""><spring:message code="comUatUia.loginForm.GNR"/></a></li> <!-- 일반 -->
				<li><a href="javascript:fnLoginTypeSelect('typeEnt');" id="typeEnt" title=""><spring:message code="comUatUia.loginForm.ENT"/></a></li> <!-- 기업 -->
				<li><a href="javascript:fnLoginTypeSelect('typeUsr');" id="typeUsr" title=""><spring:message code="comUatUia.loginForm.USR"/></a></li> <!-- 업무 -->
			</ul>
		</div>
            
        
            <!-- Email -->
            <input type="text" name="id" id="id" class="form-control mb-4" placeholder="아이디">
        
            <!-- Password -->
            <input type="password" name="password" id="password" class="form-control mb-4" placeholder="비밀번호" title="비밀번호" onKeyDown="javascript:if (event.keyCode == 13) { actionLogin(); }"/>
	        <input name="userSe" type="hidden" value="GNR"/>
	        <input name="j_username" type="hidden"/>             
        
            <div class="d-flex justify-content-around">
                <div>
                    <!-- Remember me -->
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="checkId" id="checkId" onClick="javascript:saveid(document.loginForm);">
                        <label class="custom-control-label" for="checkId">기억</label>
                    </div>
                </div>
                <div>
                    <!-- Forgot password -->
                    <a href="#" onclick="goFindId(); return false;"><spring:message code="comUatUia.loginForm.idPwSearch"/></a></li> <!-- 아이디/비밀번호 찾기 -->
                </div>
            </div>
        
            <!-- Sign in button -->
            <button class="btn btn-info btn-block my-4" type="submit" onClick="actionLogin()">로그인</button>
                    
            <!-- Register -->
            <p>회원이 아니세요?
                <a href="#" onClick="goRegiUsr();">회원가입</a>                
            </p>
        
            <!-- Social login -->
            <p>또는 SNS로 가입하기:</p>       
            <a href="#" class="mx-2" role="button"><i class="fab fa-facebook-f light-blue-text"></i></a>
            <a href="#" class="mx-2" role="button"><i class="fab fa-twitter light-blue-text"></i></a>
        </form>
        <!-- Default form login -->
	</div>
    <div class="col-sm"></div>
    
    </div>
  </main>
  <!--Main layout-->

  <!-- footer 시작 -->
  <div id="footer"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" /></div>
  <!-- //footer 끝 -->
  <script>
  $(document).ready(function(){
    $("#info").hide();
    fnInit();
  });  
  </script>
</body>
</html>


