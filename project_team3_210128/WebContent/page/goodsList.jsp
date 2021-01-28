<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("UTF-8");%>
<%@ include file="../module/top.jsp" %>  
<%@ page import="project.team3.dao.Gdao" %>
<%@ page import="project.team3.dto.Goods" %> 
<script src="../assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../assets/js/jquery-3.5.1.min.js"></script>

<!--db 내용을 담아서 보여주어야한다@@@@@@@@@  -->

<section id="hero" class="d-flex justify-cntent-center align-items-center" style="height: 100px;">
</section><!-- End Hero -->	
<style>
/*폰트 적용*/

html {
    font-family: sans-serif;
}


/*노말라이즈*/
body,
ul,
li {
    list-style: none;
    padding: 0;
    margin: 0;
}
a {
    text-decoration: none;
    color: inherit;
}

/*라이브러리*/

.con {
    margin-left: auto;
    margin-right: auto;
}

.cell {
    float: left;
    box-sizing: border-box;
    margin-bottom: 20px;
}
.row::after {
    content: "";
    display: block;
    clear: both;
}
.img-box > img {
    display: block;
    width: 100%;
}
/*커스텀*/
html,
body {
    overflow-x: hidden;
}
.con {
    max-width: 1000px;
}

.bn-box {
    margin-bottom: 20px;
    margin-top: 20px;
}
@media ( max-width:700px ) {
    .top-bn-box-1 {
        overflow-x:hidden;
    }

    .top-bn-box-1 > .img-box {
        margin-left:-50%;
    }
}

.menu-box {
    margin-bottom: 20px;
    margin-top: 20px;
}
.menu-box > ul > li {
	float: none;
	margin: 0 auto;
    width: calc(100% / 10);
}
@media (max-width: 800px) {
    .menu-box {
        display: none;
    }
}

.menu-box > ul > li > a {
    display: block;
    text-align: center;
    font-weight: bold;
    position: relative;
}
.menu-box > ul > li:hover > a {
    color: red;
    text-decoration: underline;
}
.menu-box > ul > li > a::before,
.menu-box > ul > li > a::after {
    content: "";
    width: 1px;
    height: 13px;
    background-color: black;
    position: absolute;
    top: 50%;
    transform: translatey(-50%);
    left: 0;
}
.menu-box > ul > li > a::after {
    left: auto;
    right: 0;
}
.menu-box > ul > li:first-child > a::before,
.menu-box > ul > li:last-child > a::after {
    width: 2px;
}
.list > ul > li {
    width: calc(100% / 6);
}

.list > ul > li {
    padding: 0 10px;
}
.list > ul {
    margin: 0 -10px;
}

.list > ul > li > .product-name {
    text-align: Center;
    font-weight: bold;
}
.list > ul > li:hover > .product-name {
    text-decoration: underline;
}
.list > ul > li > .product-price {
    text-align: center;
    font-weight: bold;
    font-size: 1.5rem;
}
.list > ul > li > .product-price::after {
    content: "원";
    font-size: 1rem;
    font-weight:normal;
}


@media (max-width: 800px) {
    .list > ul > li {
        width: calc(100% / 5);
    }
}

@media (max-width: 650px) {
    .list > ul > li {
        width: calc(100% / 4);
    }
}

@media (max-width: 500px) {
    .list > ul > li {
        width: calc(100% / 3);
    }
}

@media (max-width: 400px) {
    .list > ul > li {
        width: calc(100% / 2);
    }
}

@media (max-width: 300px) {
    .list > ul > li {
        width: calc(100% / 1);
    }
}
</style>

<!--
	1) 메뉴버튼 경로지정
	2) 상품클릭하면 상품정보받아오기 + 주문화면
	  -->
    <div class="menu-bar">
        <div class="menu-box">
            <ul class="row">
                <li class="cell"><a href="#">Best item</a></li>
                <li class="cell"><a href="#">기업용</a></li>
                <li class="cell"><a href="#">가정용</a></li>
                <li class="cell"><a href="#">보조용품</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="list con">	

	
	<!-- 가격에 맞는 정보가 조회되게 설정해주자 !  -->
	
	
	<div class="section--module_wrap" module-design-id="1023">
		<div class="component component--filter type--toggle name--price on">
			<h4 class="text--module_title">가격대</h4>
			<div class="filter_content">
				<div class="section--price">
					<div class="section--price_form">
							<input type="input"id="min_price" placeholder="최소금액" name="minPrice" value="">
						<span class="text--hyphen">~</span>
							<input type="input" id="max_price" placeholder="최대금액" name="maxPrice"value="">
						<button type="button" title="입력하신 가격대로 검색합니다." class="button--filter_price ">
							<span class="ir">가격 필터 적용</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>

    <ul class="row">
        <li class="cell">
            <div class="img-box"><img src="../assets/img/goods.jfif" alt=""></div>
            <div class="product-name">solar-tec01 </div>
            <div class="product-price">89000</div>
        </li>
        <li class="cell">
            <div class="img-box"><img src="../assets/img/goods.jfif" alt=""></div>
            <div class="product-name">solar-tec01 </div>
            <div class="product-price">89000</div>
        </li>
        <li class="cell">
            <div class="img-box"><img src="../assets/img/goods.jfif" alt=""></div>
            <div class="product-name">solar-tec01 </div>
            <div class="product-price">89000</div>
        </li>
        <li class="cell">
            <div class="img-box"><img src="../assets/img/goods.jfif" alt=""></div>
            <div class="product-name">solar-tec01 </div>
            <div class="product-price">89000</div>
        </li>
        <li class="cell">
            <div class="img-box"><img src="../assets/img/goods.jfif" alt=""></div>
            <div class="product-name">solar-tec01 </div>
            <div class="product-price">89000</div>
        </li>
        <li class="cell">
            <div class="img-box"><img src="../assets/img/goods.jfif" alt=""></div>
            <div class="product-name">solar-tec01 </div>
            <div class="product-price">89000</div>
        </li>
        <li class="cell">
            <div class="img-box"><img src="../assets/img/goods.jfif" alt=""></div>
            <div class="product-name">solar-tec01 </div>
            <div class="product-price">89000</div>
        </li>
        <li class="cell">
            <div class="img-box"><img src="../assets/img/goods.jfif" alt=""></div>
            <div class="product-name">solar-tec01 </div>
            <div class="product-price">89000</div>
        </li>
        <li class="cell">
            <div class="img-box"><img src="../assets/img/goods.jfif" alt=""></div>
            <div class="product-name">solar-tec01 </div>
            <div class="product-price">89000</div>
        </li>
        <li class="cell">
            <div class="img-box"><img src="../assets/img/goods.jfif" alt=""></div>
            <div class="product-name">solar-tec01 </div>
            <div class="product-price">89000</div>
        </li>
        <li class="cell">
            <div class="img-box"><img src="../assets/img/goods.jfif" alt=""></div>
            <div class="product-name">solar-tec01 </div>
            <div class="product-price">89000</div>
        </li>
        <li class="cell">
            <div class="img-box"><img src="../assets/img/goods.jfif" alt=""></div>
            <div class="product-name">solar-tec01 </div>
            <div class="product-price">89000</div>
        </li>
    </ul>
</div>
	
	
<%@ include file="../module/bottom.jsp" %>  
