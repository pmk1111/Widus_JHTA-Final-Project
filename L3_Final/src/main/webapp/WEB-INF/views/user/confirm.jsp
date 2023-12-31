<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Widus · 회원 유형 선택</title>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <link rel="stylesheet" href="../resources/user/css/confirm.css" /> <!-- Favicons -->
    <link rel="icon" type="image/x-icon"
			href="${pageContext.request.contextPath}/mainboard/assets/img/favicon/favicon.png" />
    <link href="../resources/home/assets/img/apple-touch-icon.png" rel="apple-touch-icon"> <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"> <!-- Vendor CSS Files -->
    <link href="../resources/home/assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="../resources/home/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../resources/home/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="../resources/home/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="../resources/home/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="../resources/home/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="../resources/home/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet"> <!-- Template Main CSS File -->
    <link href="../resources/home/assets/css/home.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/confirm.css">
</head>

<body>
    <jsp:include page="header.jsp"></jsp:include>

    <div class="container-xxl flex-grow-1 container-p-y" style="display:flex; justify-content:center; align-items: center;">
        <div class="row-login">
            <!-- Total Revenue -->
            <div class="col-12 col-lg-8 order-2 order-md-3 order-lg-2 mb-4 jj-login" style="height:100%">
                <div class="card" style="height:100%">
                    <div class="card-body project-list-card-body" style="height:100%">
                        <form id="submitForm">
                            <input type="hidden" id="joinType" name="joinType" />
                            <div class="auth-section after-contets">
                                <div class="accont-wrap">
                                    <div class="account">시작하기</div>
                                    <div class="jm-cont0">
                                        <!-- 회사 계정생성 --> <img src="../resources/user/img/newcompany.png" alt="#" class="create-company"> </div>
                                    <br>
                                    <div class="jmcont2">
                                        <!-- 회사 가입하기-->
                                        <div class="box bg-1 join-company">
                                            <button type="button" class="button button--rayen button--border-thin button--text-thick button--text-upper button--size-s" data-text="기존 회사에 참여하기" style="width:100%; border-radius:10px; right: 14px;"><span>기존 회사에 참여하기</span></button>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </form>

                    </div>
                </div>
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
                                서울 종로구 율곡로10길 <br>
                                105 디아망 4층<br>
                                봉익동 10-1 03134<br><br>
                                <strong>Phone:</strong> 010-1234-1234<br>
                                <strong>Email:</strong> WidUs1004@naver.com<br>
                            </p>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>다음으로 이동</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">홈</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">소개</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">솔루션</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">서비스 약관</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">개인정보 이용약관</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>Our Services</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>SNS</h4>
                            <p>WidUs 팀원들의 SNS 계정을 방문해 보세요.</p>
                            <div class="social-links mt-3">
                                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                                <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                                <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="container footer-bottom clearfix">
                <div class="copyright">
                    &copy; Copyright <strong><span>WidUs</span></strong>. All Rights Reserved
                </div>
                <div class="credits">
                    Designed by <a href="https://bootstrapmade.com/">JHTA_L3_1</a>
                </div>
            </div>
        </footer><!-- End Footer -->
    </div> <!-- Vendor JS Files -->
    <script src="../resources/home/assets/vendor/aos/aos.js"></script>
    <script src="../resources/home/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../resources/home/assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="../resources/home/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="../resources/home/assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="../resources/home/assets/vendor/waypoints/noframework.waypoints.js"></script>
    <script src="../resources/home/assets/vendor/php-email-form/validate.js"></script> <!-- Template Main JS File -->
    <script src="../resources/home/assets/js/main.js"></script>

    <script>
        $(function() {
            $(".create-company").click(function() {
                window.location.href = '../company/create-company-domain';
            });

            $(".join-company").click(function() {
                window.location.href = '../company/join-company';
            });
        });


        function createSingleProject() {
            $.ajax({
                url: '../user/create-single-project',
                type: 'POST',
                beforeSend: function(xhr) {
                    xhr.setRequestHeader(header, token);
                },
                success: function(response) {
                    if (response == 0) {
                        alert("프로젝트가 정상적으로 생성되었습니다.");
                        //페이지 이동//
                    } else {
                        alert("프로젝트 생성이 실패하였습니다.");
                    }
                },
                error: function(error) {
                    console.error(error);
                }
            });
        }
    </script>
</body>

</html>