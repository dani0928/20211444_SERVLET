<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="java.sql.*"%>
<%@ include file="db/db_conn.jsp"%>

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
    <div class="container">
		<div class="row" align="center">
    <%
		String sql = "Select * from product"; // 조회
		pstmt = conn.prepareStatement(sql); // 연결 생성
		rs = pstmt.executeQuery(); // 쿼리 실행
		while (rs.next()) { // 결과 ResultSet 객체 반복
	%>

			<div class="col-md-4">
                <div class="card bg-dark text-black">
                        <img src="image/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                        <div class="card-img-overlay">
                        <h5 class="card-title">신발이미지 샘플</h5>
                        <p class="card-text">출처 : 나이키</p>
                        </div>
                        </div>

		<h3><%=rs.getString("p_name")%></h3>
		<p><%=rs.getString("p_description")%>
		<p><%=rs.getString("p_UnitPrice")%>원
		<p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
			</div>
        <%
            } // 반복문 끝난 이후 db 연결 종료	
		if (rs != null)
			rs.close();
 		if (pstmt != null)
 			pstmt.close();
 		if (conn != null)
			conn.close();
	%>
	</div>
	    <hr>
   </div>
		<hr>
	<div class="card bg-dark text-white">
    <img src="image/nike product2.jpg" class="card-img" alt="...">
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

    
