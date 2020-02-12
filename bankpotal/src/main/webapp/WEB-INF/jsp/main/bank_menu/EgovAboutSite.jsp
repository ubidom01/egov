<%--
  Class Name : EgovAboutSite.jsp
  Description : 샘플화면 - 사이트소개(sample)
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="content-language" content="ko">
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
  <main class="mt-5 pt-5">
    <div class="container-flur">
      <!--Section: Jumbotron-->
      <section class="card card-image" style="background-image: url(<c:url value='/'/>images/building.jpg); background-size: cover; background-repeat: no-repeat;" id="intro">
      
        <!-- Content -->
        <div class="card-body white-text text-center smooth-scroll mx-4 py-5 px-5 my-5">
          <h1 class="h2-responsive mb-5 wow fadeIn" style="visibility: visible; animation-name: fadeIn;">
            <strong>금융상담소외자를 위한 생활금융 상담플랫폼 운영 서비스</strong>
          </h1>          
        </div>
        <!--// Content -->
      </section>
      <!--//Section: Jumbotron-->
    </div>
  
    <div class="container">      
      <!--Section: Cards-->
      <section class="text-center mt-3 pt-3">
      
          <!--Grid row-->
          <div class="row features-big text-center wow fadeIn" data-wow-delay="0.4s" style="visibility: visible; animation-name: fadeIn; animation-delay: 0.4s;">

                    <!-- First column -->
                    <div class="col-md-4 mb-5">

                        <!--Panel-->
                        <div class="card card-body hoverable">
                            <i class="fas fa-laptop fa-3x mb-4" aria-hidden="true"></i>
                            <h5 class="font-weight-bold text-uppercase mb-4">비전</h5>
                            <p class="dark-grey-text">금융상담소외자를 위한 생활금융상담플랫폼 운영으로 금융의 문턱이 높아 발생하는 금융소외자가 없도록 하고자 합니다</p>
                        </div>
                        <!--/.Panel-->

                    </div>
                    <!-- /First column -->

                    <!-- Second column -->
                    <div class="col-md-4 mb-5">

                        <!--Panel-->
                        <div class="card card-body yellow hoverable">
                            <i class="fas fa-flag fa-3x mb-4" aria-hidden="true"></i>
                            <h5 class="font-weight-bold text-uppercase mb-4">사업목표</h5>
                            <p class="dark-grey-text">생활금융소비자에게 사전예방 금융상담 제공, 생활금융소비자 삶에 영향을 미치는 관행과 정책개선추진, 금융 은퇴자의 사회적참여와 재능 나눔 채널 제공</p>
                        </div>
                        <!--/.Panel-->

                    </div>
                    <!-- /.Second column -->

                    <!-- Third column -->
                    <div class="col-md-4 mb-5">

                        <!--Panel-->
                        <div class="card card-body hoverable">
                            <i class="fas fa-pencil-alt fa-3x mb-4" aria-hidden="true"></i>
                            <h5 class="font-weight-bold text-uppercase mb-4">사업전략</h5>
                            <p class="dark-grey-text">"새는 돈 모아 노후준비하자” 금용을 잘 몰라 새는 돈이 많습니다. 생활금융캠페인, 금융클리닉, 생활금융 종합상담, 생활금융교육을 진행합니다.</p>
                        </div>
                        <!--/.Panel-->

                    </div>
                    <!-- /.Third column -->
          </div>
        <!--//Grid row-->
          
       </section>
      <!--//Section: Cards-->
    </div> <!--//container -->
          
          
    <div class="container-fluid" style="background-color: #f3f3f5;">
      <div class="container py-4">

        <!--Section: Testimonials v.2-->
        <section id="testimonials" class="section mb-5">

          <!--Section heading-->
          <h2 class="blue-text text-center text-uppercase font-weight-bold mt-5 mb-5 wow fadeIn" data-wow-delay="0.2s" style="visibility: visible; animation-name: fadeIn; animation-delay: 0.2s;">
          추천 합니다!</h2>
          <div class="wrapper-carousel-fix">
            <!--Carousel Wrapper-->
            <div id="carousel-example-1" class="carousel no-flex testimonial-carousel slide wow fadeIn carousel-fade" data-ride="carousel" data-interval="false" style="visibility: visible; animation-name: fadeIn;">

              <!--Slides-->
              <div class="carousel-inner" role="listbox">
                <!--First slide-->
                <div class="carousel-item">

                  <div class="testimonial text-center">
                    <!--Avatar-->
                    <div class="avatar mb-4">

                      <img src="<c:url value='/'/>images/mun.jpg" class="rounded-circle img-fluid" alt="First sample avatar image">

                    </div>

                    <!--Content-->
                    <p><i class="fas fa-quote-left"></i> 총아대에서 근무하는 경제전문가 윤재인입니다. 저도 이렇게 좋은 서비스를 만들고 싶었는데 금융과나눔이 금융소외자를 위해 좋은 일을 하는 것에 감동입니다. 번창하세요.</p>

                    <div class="mt-1">
                      <h5><strong>경제학자/윤재인</strong></h5>
                      <p>총아대 주식회사</p>
                    </div>
                    <!--Review-->
                    <div class="blue-text">
                      <i class="fas fa-star"> </i>
                      <i class="fas fa-star"> </i>
                      <i class="fas fa-star"> </i>
                      <i class="fas fa-star"> </i>
                      <i class="fas fa-star"> </i>
                    </div>
                  </div>
                </div>
                <!--/First slide-->

                <!--Second slide-->
                <div class="carousel-item">

                  <div class="testimonial text-center">
                    <!--Avatar-->
                    <div class="avatar mb-4">

                      <img src="<c:url value='/'/>images/you.jpg" class="rounded-circle img-fluid" alt="Third sample avatar image">

                    </div>
                    <!--Content-->
                    <p><i class="fas fa-quote-left"></i> 여러가기 이유로 문턱이 높은 금융권인데 금융과나눔이 좋은 뜻을 가지고 만든 금융상담 플랫폼이 금융소외자가 없는 좋은 나라를 만들어 갈 것으로 기대됩니다.</p>

                    <div class="mt-1">
                      <h5><strong>유산슬</strong></h5>
                      <h5>(주)무한건설</h5>
                    </div>

                    <!--Review-->
                    <div class="blue-text">
                      <i class="fas fa-star"> </i>
                      <i class="fas fa-star"> </i>
                      <i class="fas fa-star"> </i>
                      <i class="fas fa-star"> </i>
                      <i class="fas fa-star"> </i>
                    </div>

                  </div>

                </div>
                <!--/Second slide-->

                <!--Third slide-->
                <div class="carousel-item active">

                  <div class="testimonial text-center">
                    <!--Avatar-->
                    <div class="avatar mb-4">

                      <img src="<c:url value='/'/>images/park.jpg" class="rounded-circle img-fluid" alt="Second sample avatar image">

                    </div>
                    <!--Content-->
                    <p><i class="fas fa-quote-left"></i>오랬동안 금융업에 몸담아 오는동안 항상 꿈꿔왔던 서비스를 만들었습니다. 부디 많은 분들이 이용하여 금융이 주는 혜택을 충분히 누릴수 있길 기대해 봅니다. </p>

                    <div class="mt-1">
                      <h5><strong>박상섭</strong></h5>
                      <h5>(주)금융과나눔</h5>
                    </div>

                    <!--Review-->
                    <div class="blue-text">
                      <i class="fas fa-star"> </i>
                      <i class="fas fa-star"> </i>
                      <i class="fas fa-star"> </i>
                      <i class="fas fa-star"> </i>
                      <i class="fas fa-star"> </i>
                    </div>

                  </div>

                </div>
                <!--/Third slide-->
              </div>
              <!--/.Slides-->

              <!--Controls-->
              <a class="carousel-control-prev left carousel-control" href="#carousel-example-1" role="button" data-slide="prev">
                <i class="fa fa-angle-left" aria-hidden="true" style="color:black"></i>  
                <!-- <span class="icon-prev" aria-hidden="true"></span> -->
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next right carousel-control" href="#carousel-example-1" role="button" data-slide="next">
                <i class="fa fa-angle-right" aria-hidden="true" style="color:black"></i>
                <!-- <span class="icon-next" aria-hidden="true"></span> -->
                <span class="sr-only">Next</span>
              </a>
              <!--/.Controls-->
            </div>
            <!--/.Carousel Wrapper-->
          </div>
        </section>
        <!--Section: Testimonials v.2-->

      </div>
    </div>
  
    <div class="container">      
       <!--Section: Cards-->
      <section class="text-center mt-3 pt-3">
    
          <!--Grid row-->
          <div class="row features-big text-center wow fadeIn" data-wow-delay="0.4s" style="visibility: visible; animation-name: fadeIn; animation-delay: 0.4s;">

                    <!-- First column -->
                    <div class="col-md-4 mb-5">

                        <!--Panel-->
                        <div class="card card-body hoverable">
                            <i class="fas fa-cubes fa-3x mb-4" aria-hidden="true"></i>
                            <h5 class="font-weight-bold text-uppercase mb-4">프로젝트</h5>
                            <p class="dark-grey-text">목표달성을 위해 두가지 실천 프로젝트<span class="yellow"> 1.새는 돈 모으는 Birdmoney프로젝트 </span> / <span class="yellow">2.노후준비를 돕는 Honeymoney프로젝트</span></p>
                        </div>
                        <!--/.Panel-->

                    </div>
                    <!-- /First column -->

                    <!-- Second column -->
                    <div class="col-md-4 mb-5">

                        <!--Panel-->
                        <div class="card card-body yellow hoverable">
                            <i class="fas fa-clipboard fa-3x mb-4" aria-hidden="true"></i> 
                            <h5 class="font-weight-bold text-uppercase mb-4">상담센터운영</h5>
                            <p class="dark-grey-text">사전예방적 금융상담은 시민생활금융상담센터를 통해 이루어 집니다.</p>
                        </div>
                        <!--/.Panel-->

                    </div>
                    <!-- /.Second column -->

                    <!-- Third column -->
                    <div class="col-md-4 mb-5">

                        <!--Panel-->
                        <div class="card card-body hoverable">
                            <i class="fas fa-comment fa-3x mb-4" aria-hidden="true"></i>
                            <h5 class="font-weight-bold text-uppercase mb-4">멘토링</h5>
                            <p class="dark-grey-text">생활금융상담사의 상담과 클리닉은 금융인의 재능나눔을 통해 제공됩니다.</p>
                        </div>
                        <!--/.Panel-->

                    </div>
                    <!-- /.Third column -->
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
