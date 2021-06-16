<%@ page pageEncoding="utf-8"%>
<!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-md-10">
                        <div class="header__top__inner">
                            <div class="header__logo">
                                <a href="./index.jsp">
                                <img src="myimg/mini_logo.png" style="width: 350px; height: 80px;"></a>
                            </div>
                        </div>
                    </div>
                    <div class = "col-md-2">
                    	<div class='weather'>
                    		<div class = 'CurrIcon'></div>
                    		<div class = 'CurrTemp'></div>
                    		<div class = 'City'></div>
                    	</div>
                    	<script src = "https://code.jquery.com/jquery-latest.js"></script>
                    	 <script>
                    	 /* Javascript 샘플 코드 */
						
						$(document).ready(function(){
							let weatherIcon = {
									'01' : 'fas fa-sun',
									'02' : 'fas fa-cloud-sun',
									'03' : 'fas fa-cloud',
									'04' : 'fas fa-cloud-meatball',
									'09' : 'fas fa-cloud-sun-rain',
									'10' : 'fas fa-cloud-showers-heavy',
									'11' : 'fas fa-poo-storm',
									'50' : 'fas fa-smog'
							};
							

							$.ajax({
								url: 'http://api.openweathermap.org/data/2.5/weather?q=Seoul&appid=1c9ff7d65af0e6d870fb937eb15a74b7',
								dataType : 'json',
								type : 'GET',
								success: function(data){
									var $Icon = (data.weather[0].icon);
									var $Temp = Math.floor(data.main.temp) + 'º';
									var $city = data.name;
									
									//$('.CurrIcon').append('http://openweathermap.org/img/w/'+$Icon+'.png');
									$('.CurrTemp').prepend($Temp);
									$('.City').append($city);
								}
							})
						});
						</script>
						
                    </div>
                </div>
                <div class="canvas__open"><i class="fa fa-bars"></i></div>
            </div>
        </div>
        <%
        	String path = request.getRequestURI();
        %>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li class="nav-item <%if(path!=null&&path.endsWith("index.jsp")){%>active<%} %>"><a href="index.jsp">홈</a></li>
                            <li class="<%if(path!=null&&path.endsWith("introduce.jsp")){%>active<%} %>"><a href="introduce.jsp">문화재 소개</a></li>
							<li class="<%if(path!=null&&path.endsWith("course.jsp")||path.endsWith("courseA.jsp")||path.endsWith("courseB.jsp")||path.endsWith("courseC.jsp")||path.endsWith("courseD.jsp")){%>active<%} %>"><a href="#">위치 기반 추천</a>
                                <ul class="dropdown">
                                    <li><a href="./course.jsp">전체 코스</a></li>
                                    <li><a href="./courseA.jsp">코스A</a></li>
                                    <li><a href="./courseB.jsp">코스B</a></li>
                                    <li><a href="./courseC.jsp">코스C</a></li>
                                    <li><a href="./courseD.jsp">코스D</a></li>
                                </ul>
                            </li>
                            <li class="<%if(path!=null&&path.endsWith("classify1.jsp")||path.endsWith("classify2.jsp")){%>active<%} %>"><a href="#">구분 기반 추천</a>
                                <ul class="dropdown">
                                    <li><a href="./classify1.jsp">지정 구분 코스</a></li>
                                    <li><a href="./classify2.jsp">등록 구분 코스</a></li>
                                </ul>
                            </li>
                            <li class="<%if(path!=null&&path.endsWith("datatable2.jsp")||path.endsWith("datatable3.jsp")){%>active<%} %>"><a href="#">문화재 종류</a>
                                <ul class="dropdown">
                                 	<li><a href="./datatable2.jsp">구분별(이름순)</a></li>
                                    <li><a href="./datatable3.jsp">연도별</a></li>
                 
                                </ul>
                            </li>
                            <li class="<%if(path!=null&&path.endsWith("ourteam.jsp")){%>active<%} %>"><a href="ourteam.jsp">Our Team</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Section End -->