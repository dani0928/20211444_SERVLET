<%@ page contentType = "text/html;charset=utf-8" %>
<%! String greeting = "환영합니다!";
      String tagline = "Welcome to Web Market!";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>	
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