<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%
	//ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 
<%! String greeting = "환영합니다! 어서오세요!";
      String tagline = "Welcome to Web Market!";%>
<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>
	<%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>

    <div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
                <div class="card bg-dark text-black">
                    <img src="../image/<%=product.getFilename()%>" class="card-img" alt="...">
                        <div class="card-img-overlay">
                        <h5 class="card-title">신발이미지 샘플</h5>
                        <p class="card-text">출처 : 나이키</p>
                        </div>
                        </div>

				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>원
                <p><a href="product_detail_ad.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>	
	<div class="card bg-dark text-white">
    <img src="../image/nike product2.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">나이키 이벤트</h5>
    <p class="card-text">출처 : Pinterest</p>
  </div>
  </div>
<div class="list-group">
      <a href="#" class="list-group-item list-group-item-action active" aria-current="true">나이키 에어포스 시리즈</a>
      <a href="#" class="list-group-item list-group-item-action">나이키 덩크 시리즈</a>
      <a href="#" class="list-group-item list-group-item-action">나이키 조던 시리즈</a>
    </div>
