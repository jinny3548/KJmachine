<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="./includes/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	$(document).ready(function(){
	});
</script>
</head>
<body>
 <section class="u-align-center u-clearfix u-section-1" id="carousel_2dfe">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
              <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1">
                  <h2 class="u-align-center u-text u-text-palette-2-base u-text-1">Facts &amp; Questions</h2>
                  <p class="u-align-left u-text u-text-2">Sample text. Click to select the text box. Click again or double click to start editing the text.</p>
                  <div class="u-table u-table-responsive u-table-1" style="width: 90%;">
                    <table class="u-table-entity">
                      <colgroup>
                        <col width="9.73%">
                        <col width="40.17%">
                        <col width="28.55%">
                        <col width="21.55%">
                      </colgroup>
                      <tbody class="u-table-body">
                        <tr style="height: 36px;">
                          <td class="u-border-1 u-border-grey-30 u-palette-2-base u-table-cell u-table-cell-1">No</td>
                          <td class="u-border-1 u-border-grey-30 u-palette-2-base u-table-cell u-table-cell-2">제목</td>
                          <td class="u-border-1 u-border-grey-30 u-palette-2-base u-table-cell u-table-cell-3">작성자</td>
                          <td class="u-border-1 u-border-grey-30 u-palette-2-base u-table-cell u-table-cell-4">작성일</td>
                        </tr>
                         <c:forEach items="${board }" var="board">
                        <tr style="height: 40px;">
                          <td class="u-border-1 u-border-grey-30 u-table-cell">${board.mbno }</td>
                          <td class="u-border-1 u-border-grey-30 u-table-cell" ><a href="adminBoardShow?mbno=${board.mbno }">${board.sub }</a></td>
                          <td class="u-border-1 u-border-grey-30 u-table-cell">${board.email }</td>
                          <td class="u-border-1 u-border-grey-30 u-table-cell">${board.date }</td>
                        </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div> 
                  <a href="" style="width: 5%;"
                  class="u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-light-1 u-palette-2-base u-radius-50 u-btn-1">1<br>
                  </a>
                  <a href="https://nicepage.online" class="u-btn u-button-style u-none u-text-hover-palette-2-base u-text-palette-1-base u-btn-2">Read More&nbsp;<span class="u-icon u-text-palette-2-base"><svg class="u-svg-content" viewBox="0 -32 426.66667 426" style="width: 1em; height: 1em;"><path d="m213.332031 181.667969c0 4.265625-1.277343 8.53125-3.625 11.730469l-106.667969 160c-3.839843 5.761718-10.238281 9.601562-17.707031 9.601562h-64c-11.730469 0-21.332031-9.601562-21.332031-21.332031 0-4.269531 1.28125-8.535157 3.625-11.734375l98.773438-148.265625-98.773438-148.269531c-2.34375-3.199219-3.625-7.464844-3.625-11.730469 0-11.734375 9.601562-21.335938 21.332031-21.335938h64c7.46875 0 13.867188 3.839844 17.707031 9.601563l106.667969 160c2.347657 3.199218 3.625 7.464844 3.625 11.734375zm0 0"></path><path d="m426.667969 181.667969c0 4.265625-1.28125 8.53125-3.628907 11.730469l-106.664062 160c-3.839844 5.761718-10.242188 9.601562-17.707031 9.601562h-64c-11.734375 0-21.335938-9.601562-21.335938-21.332031 0-4.269531 1.28125-8.535157 3.628907-11.734375l98.773437-148.265625-98.773437-148.269531c-2.347657-3.199219-3.628907-7.464844-3.628907-11.730469 0-11.734375 9.601563-21.335938 21.335938-21.335938h64c7.464843 0 13.867187 3.839844 17.707031 9.601563l106.664062 160c2.347657 3.199218 3.628907 7.464844 3.628907 11.734375zm0 0"></path></svg><img></span>
                  </a><span class="u-icon u-text-palette-2-base u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 58 58" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-685e"></use></svg><svg class="u-svg-content" viewBox="0 0 58 58" x="0px" y="0px" id="svg-685e" style="enable-background:new 0 0 58 58;"><circle style="fill:currentColor;" cx="29" cy="29" r="29"></circle><g><polygon style="fill:#FFFFFF;" points="44,29 22,44 22,29.273 22,14 	"></polygon><path style="fill:#FFFFFF;" d="M22,45c-0.16,0-0.321-0.038-0.467-0.116C21.205,44.711,21,44.371,21,44V14
		c0-0.371,0.205-0.711,0.533-0.884c0.328-0.174,0.724-0.15,1.031,0.058l22,15C44.836,28.36,45,28.669,45,29s-0.164,0.64-0.437,0.826
		l-22,15C22.394,44.941,22.197,45,22,45z M23,15.893v26.215L42.225,29L23,15.893z"></path>
</g></svg></span>
                  <div class="u-form u-form-1" style="display: flex; margin-left: auto; margin-right: auto; padding: 0 10% 0 20%;">
                    <form action="#" method="POST" class="u-clearfix u-form-horizontal u-form-spacing-15 u-inner-form" style="padding: 15px" source="email">
                      <div class="u-form-group u-form-name u-label-top">
                        <label for="name-558c" class="u-label">Name</label>
                        <input type="text" placeholder="Name" id="name-558c" name="name" class="u-border-1 u-border-grey-30 u-input u-input-rectangle" required="">
                      </div>
                      <div class="u-form-email u-form-group u-label-top">
                        <label for="email-558c" class="u-label">Email</label>
                        <input type="email" placeholder="Email" id="email-558c" name="email" class="u-border-1 u-border-grey-30 u-input u-input-rectangle" required="">
                      </div>
                       <div class="u-form-email u-form-group u-label-top">
                       <label for="email-558c" class="u-label"></label>
                        <input type="submit" value="submit" style="margin-top: 30px;"
                        class="u-border-none u-btn u-btn-submit u-button-style u-palette-2-base u-btn-3">
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
    </section>
                 <%@ include file="./includes/footer.jsp" %>
</body>
</html>