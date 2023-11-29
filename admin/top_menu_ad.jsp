<%@ page contentType="text/html; charset=utf-8"%>
<nav class="navbar navbar-expand  navbar-dark bg-dark">
   <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          카테고리
        </button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="#">애플워치</a>
        <a class="dropdown-item" href="#">애플패드</a>     
        <a class="dropdown-item" href="#">에어팟</a>
        <a class="dropdown-item" href="#">에어팟 맥스</a>
        <a class="dropdown-item" href="#">맥북</a>
     </div>
   </div>
    
    <div>
        <img src="image/nike.gif" class="img-fluid" alt="...">
    </div>
    
   <div class="container">
      <div class="navbar-header">
         <a class="navbar-brand" href="./index.jsp">메뉴바 : 홈페이지</a>
            <a class="navbar-brand" href="./index.jsp">회원 보기</a>
            <a class="navbar-brand" href="index_ad.jsp">상품 보기</a>
            <a class="navbar-brand" href="product_add.jsp">등록</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=update">수정</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=delete">삭제</a>            
            <a class="navbar-brand" href="../index.jsp">일반모드</a>
          <a href="../login/logout.jsp" class="btn btn-sm btn-success pull-right">로그아웃</a>
      </div>
   </div>
</nav>