<%--
  Class Name : EgovIdDplctCnfirm.jsp
  Description : 아이디중복확인
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2009.03.03  JJY          최초 생성
     2011.08.31  JJY       경량환경 버전 생성
 
    author   : 공통서비스 개발팀 JJY
    since    : 2009.03.03
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="content-language" content="ko">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>ID중복확인</title>
<link rel="icon" href="<c:url value='/'/>img/mdb-favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<link rel="stylesheet" href="<c:url value='/'/>css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value='/'/>css/mdb.min.css">
<link rel="stylesheet" href="<c:url value='/'/>css/style.css"> 
<base target="_self" >
<script type="text/javascript" src="<c:url value='/js/showModalDialogCallee.js'/>" ></script>
<script type="text/javaScript">
<!--
function fnCheckId(){
    if(document.checkForm.checkId.value==""){
        alert("중복조회할 아이디를 입력하십시오.");
        document.checkForm.focus();
        return;
    }
    if(fnCheckNotKorean(document.checkForm.checkId.value)){
        document.checkForm.submit();
    }else{
        alert("한글은 사용할 수 없습니다.");
        return;
    }
}
function fnReturnId(){
    var retVal="";
    if (document.checkForm.usedCnt.value == 0){
        retVal = document.checkForm.resultId.value;
        setReturnValue(retVal);
        window.returnValue = retVal;
        window.close();
    }else if (document.checkForm.usedCnt.value == 1){
        alert("이미사용중인 아이디입니다.");
        return;
    }else{
        alert("먼저 중복확인을 실행하십시오");
        return;
    }
}
function fnClose(){
    var retVal="";
    window.returnValue = retVal; 
    window.close();
}
function fnCheckNotKorean(koreanStr){                  
    for(var i=0;i<koreanStr.length;i++){
        var koreanChar = koreanStr.charCodeAt(i);
        if( !( 0xAC00 <= koreanChar && koreanChar <= 0xD7A3 ) && !( 0x3131 <= koreanChar && koreanChar <= 0x318E ) ) { 
        }else{
            //hangul finding....
            return false;
        }
    }
    return true;
}
//-->
</script>
</head>
<body>
  <div class="container py-3">
 
    <!--Section: Content-->
    <section class="px-md-5 mx-md-5 text-center text-lg-left dark-grey-text">

      <!--Grid row-->
      <div class="row d-flex justify-content-center">

        <!--Grid column-->
        <div class="col-md-12 text-center">

          <h4 class="font-weight-bold mb-4">아이디 중복확인</h4>

          <form name="checkForm" action ="<c:url value='/uss/umt/cmm/EgovIdDplctCnfirm.do'/>">
          <div class="input-group mb-4">
            <input type="text" name="checkId" title="선택여부" value="<c:out value="${checkId}"/>" maxlength="20" class="form-control" placeholder="아이디 입력" aria-label="아이디 입력"
              aria-describedby="button-addon2">
            <div class="input-group-append">
              <button onclick="javascript:fnCheckId(); return false;" class="btn btn-md btn-outline-default m-0 px-3 py-2 z-depth-0 waves-effect" type="submit"
                id="button-addon2"><spring:message code="button.inquire" /></button>
            </div>
          </div>
          <div>
              <input type="hidden" name="resultId" value="<c:out value="${checkId}"/>" />
              <input type="hidden" name="usedCnt" value="<c:out value="${usedCnt}"/>" />
          </div>   
          </form>         
          <div>
                <c:choose>
                <c:when test="${usedCnt eq -1}">
                    &nbsp; 중복확인을 실행하십시오
                </c:when>
                <c:when test="${usedCnt eq 0}">
                    ${checkId} 는 사용가능한 아이디입니다.
                </c:when>
                <c:otherwise>
                    ${checkId} 는 사용할수 없는 아이디입니다.
                </c:otherwise>
                </c:choose>
           </div>     

        <p class="font-weight-bold">
        <button type="button" onclick="javascript:fnReturnId(); return false;" class="btn btn-outline-default btn-rounded waves-effect"><spring:message code="button.use" /></button>
        <button type="button" onclick="javascript:fnClose(); return false;" class="btn btn-outline-default btn-rounded waves-effect"><spring:message code="button.close" /></button>      
        </p>

        </div>
        <!--Grid column-->

      </div>
      <!--Grid row-->


    </section>
    <!--Section: Content-->


  </div>


 

    
</body>
</html>