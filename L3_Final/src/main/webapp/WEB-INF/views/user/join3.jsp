<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>WidUs-join</title>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <link rel="stylesheet" href="../resources/user/css/join3.css" />
    <!-- Favicons -->
    <link href="../resources/home/assets/img/favicon.png" rel="icon">
    <link href="../resources/home/assets/img/apple-touch-icon.png" rel="apple-touch-icon">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <!-- Vendor CSS Files -->
    <link href="../resources/home/assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="../resources/home/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../resources/home/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="../resources/home/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="../resources/home/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="../resources/home/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="../resources/home/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
    <!-- Template Main CSS File -->
    <link href="../resources/home/assets/css/home.css" rel="stylesheet">
    <!-- ======================================================== * Template Name: Arsha * Updated: Jul 27 2023 with Bootstrap v5.3.1 * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ * Author: BootstrapMade.com * License: https://bootstrapmade.com/license/ ======================================================== -->
    <style type="text/css">
        .companyName,
        .eid {
            color: #333;
            font-size: 16px;
            padding: 0 0 0 20px;
            background: #FFFFFF;
            width: 640px;
            padding: 16px 20px;
            color: #333;
            border: 1px solid #ddd;
            -webkit-border-radius: 8px;
            border-radius: 8px;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            margin-top: 10px;
        }

        .errMsg {
            text-align: left;
            margin-top: 10px;
            color: #ff6b6b;
            font-size: 14px;
            line-height: 21px;
        }

        .errMsg {
            margin-top: 5px;
            margin-bottom: 5px;
            visibility: hidden;
        }

        .btn-join {
            margin-top: 20px;
            margin-bottom: 100px;
        }
    </style>
</head>

<body>
    <jsp:include page="header.jsp"></jsp:include>

    <div class="auth-section after-contets">
        <div class="accont-wrap">
            <div id="companyJoinMain" class="login-wrap">
                <div class="login-text">새 회사 만들기</div>
                <div class="login-company">회사 정보 입력 후, Widus 관리자로 시작해보세요.</div>
                <div class="join-contets">
                    <div>
                        <b class="bTxt">회사명</b><br> <input type="text" id="companyName" class="companyName" name="companyName" placeholder="회사이름을 입력하세요" maxLength="30" required>
                        <p class="errMsg" id="name_message">오류메세지 영역</p>
                    </div>
                    <p class="url-tit">회사 URL</p>
                    <div class="url-wr">
                        <span>https://</span> <input id="joinInput" type="text" class="join-input" autocomplete="off" placeholder="회사 URL" maxLength="30">
                        <span>.widus.team</span>
                    </div>
                    <p id="helpMsg" class="join-company-url" style="display: block;">
                        회사URL 주소는 관리자를 통해 확인할 수 있습니다.
                </div>

                <div>
                    <b class="bTxt">사업자 등록번호</b><br> <input type="text" id="eid" class="eid" name="eid" maxLength="10" placeholder="-없이 10자리를 입력하세요" required>
                    <p class="errMsg" id="email_message">오류메세지 영역</p>
                </div>
                <button id="companyJoinBtn" class="btn-join"><strong>다음</strong></button>
            </div>
        </div>
    </div>
    <div id="signupFooterArea" style="display: block;">
        <!-- ======= Footer ======= -->
        <footer id="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-3 col-md-6 footer-contact">
                            <h3>WidUs</h3>
                            <p>
                                서울 종로구 율곡로10길 <br> 105 디아망 4층<br> 봉익동 10-1 03134<br>
                                <br> <strong>Phone:</strong> 010-1234-1234<br> <strong>Email:</strong>
                                WidUs1004@naver.com<br>
                            </p>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>다음으로 이동</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">홈</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">소개</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">솔루션</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">서비스
                                        약관</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">개인정보
                                        이용약관</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>Our Services</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Web
                                        Design</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Web
                                        Development</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Product
                                        Management</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic
                                        Design</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>SNS</h4>
                            <p>WidUs 팀원들의 SNS 계정을 방문해 보세요.</p>
                            <div class="social-links mt-3">
                                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="container footer-bottom clearfix">
                <div class="copyright">
                    &copy; Copyright <strong><span>WidUs</span></strong>. All Rights
                    Reserved
                </div>
                <div class="credits">
                    <!-- All the links in the footer should remain intact. -->
                    <!-- You can delete the links only if you purchased the pro version. -->
                    <!-- Licensing information: https://bootstrapmade.com/license/ -->
                    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ -->
                    Designed by <a href="https://bootstrapmade.com/">JHTA_L3_1</a>
                </div>
            </div>
        </footer>
        <!-- End Footer -->
    </div>
    <!-- Vendor JS Files -->
    <script src="../resources/home/assets/vendor/aos/aos.js"></script>
    <script src="../resources/home/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../resources/home/assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="../resources/home/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="../resources/home/assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="../resources/home/assets/vendor/waypoints/noframework.waypoints.js"></script>
    <script src="../resources/home/assets/vendor/php-email-form/validate.js"></script>
    <!-- Template Main JS File -->
    <script src="../resources/home/assets/js/main.js"></script>
   
</body>
 <script type='text/javascript'>
        function printErrMsg(id,msg){
            const element = document.getElementById(id);
            element.innerHTML = msg;
            element.style.visibility = 'visible';
        }

        function validateURL(input){
            var re = /^[a-zA-Z0-9-]{3,30}$/;
            return re.test(input);
        }

        function validateEID(input) {
          var re = /^\d+$/;
          return re.test(input);
       }
      
        $(document).ready(function() {
            $("#joinInput").on('focusout', function() {
                if (!validateURL(this.value)) {
                    document.getElementById("helpMsg").innerHTML = "회사 URL은 3~30글자의 영문자/숫자/하이픈(-)으로만 입력해야 합니다.";
                    document.getElementById("helpMsg").style.color = "red";
                } else {
                    document.getElementById("helpMsg").innerHTML = "회사URL 주소는 관리자를 통해 확인할 수 있습니다.";
                    document.getElementById("helpMsg").style.color = "#623ad6";
                }
            });
      
         $("#eid").on('focusout', function() { 
              if (!validateEID(this.value)) { 
                  printErrMsg("email_message", "사업자 등록번호는 숫자로만 입력해야 합니다."); 
              } else { 
                  document.getElementById("email_message").style.visibility ="hidden"; 
              } 
         }); 

         $("#companyJoinBtn").on('click', function(event){
              event.preventDefault();

              var companyNameInput = document.getElementById('companyName');
              var joinInputInput = document.getElementById('joinInput');
              var eidInput= document.getElementById('eid');

              // All fields are valid
              if (validateURL(companyNameInput.value) && validateURL(joinInputInput.value) && validateEID(eidInput.value)) {
                  $("#joinform").submit();
              }

               return false;

           });
      });

</script>
</html>