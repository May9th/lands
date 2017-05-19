<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/header.jsp"%>
<script>
	function initControl(){
		$( window ).scroll( function() {
			if ( $( this ).scrollTop() > 200 ) 
			{
				$( '.top' ).fadeIn();
			}
			else 
			{
				$( '.top' ).fadeOut();
			}
		});
		$( '.top' ).click( function() {
			$( 'html, body' ).animate( { scrollTop : 0 }, 400 );
			return false;
		});
		
		doSearch();
	}

	function doSearch(){
		var strData = 123;
		var strSearchValue = "로건";
		
		var arrData = {};
		
		//controller에서 HashMap으로 받는다.
		arrData["intBbsId"] = strData;
		arrData["strSearchValue"] = strSearchValue;
		
		$.ajax({
			type : "post",
			url : "/bbs/getArticleList.do",
			contentType : "application/json; charset=UTF-8",
			dataType: "json",
			data : JSON.stringify(arrData),
			success: function(objResponse){
				onSearchHandler(objResponse);
			}
		});
	}
	
	function onSearchHandler(objResponse){
		
	}
	
	$(document).ready(function(){
		initControl();
	});
</script>

<body style="background-color:white;">
	<div class="bbs-wrapper">
		<div id="articleList" class="bbs-columns"></div>
		<div id="moreBtn" align="center" style="height:40px; margin-top:10px;"><a href="javascript:doSearch('more');" title="더보기"><i class="fa fa-plus-square" aria-hidden="true" style="vertical-align:middle;"></i><b>  게시글 더보기</b></a></div>
	</div>
</body>
<%@ include file="/WEB-INF/jsp/include/footer.jsp"%>