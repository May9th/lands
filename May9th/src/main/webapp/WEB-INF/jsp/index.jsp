<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/header.jsp"%>

<body>
	<script type="text/javascript">
		function doChangePage(strId){
			var strMenuId = strId.getAttribute("id");
			//각 메뉴마다 요청이 다름..
			document.location.href="/may9th/"+strMenuId+"/mainView.do";
		}
		
// 		$('input').focusin(function() {
// 			input = $(this);
// 			input.data('place-holder-text', input.attr('placeholder'))
// 			input.attr('placeholder', '');
// 		});
		
		function submitUserData(){
			var form = document.formLogin;
			form.action = "/main/signIn.do";
			form.submit();
		}
		
		function capsLock(e){
			  var keyCode = 0;
			  var shiftKey=false;
			  keyCode=e.keyCode;
			  shiftKey=e.shiftKey;
			  if (((keyCode >= 65 && keyCode <= 90)&& !shiftKey)||((keyCode >= 97 && keyCode <= 122)&& shiftKey))
			  {
				$("#chkCapsLock").css("display","block");
			    return;
			  }
			  else 
			  {
			  	$("#chkCapsLock").css("display","none");
			  	return;
			  }
			}
		
		$(document).ready(function(){
			
			$("#userPw").blur(function(){
				$("#chkCapsLock").css("display","none");
			});
			
		});
		
	</script>
	<div class="overlay-navigation">
		<nav role="navigation">
			<ul>
				<li><a id="home"     onclick="doChangePage(this);" data-content="The beginning">홈</a></li>
				<li><a id="about"    onclick="doChangePage(this);" data-content="Curious?">About</a></li>
				<li><a id="bbs"   onclick="doChangePage(this);" data-content="I got game">게시판</a></li>
				<li><a id="Projects" onclick="doChangePage(this);" data-content="Only the finest">Projects</a></li>
				<li><a id="contact"  onclick="doChangePage(this);" data-content="Don't hesitate">Contact</a></li>
			</ul>	
		</nav>
	</div>

	<section >
		<form id="formLogin" name="formLogin" method="post">
			<div class="form">
				<div class="username">
					<input id="userId" name="userId" type="text" placeholder="USERNAME" onfocus="this.placeholder = ''" onblur="this.placeholder = 'USERNAME'"/>
				</div>
				<div class="password">
					<input id="userPw" name="userPw" type="password" placeholder="PASSWORD" onfocus="this.placeholder = ''" onblur="this.placeholder = 'PASSWORD'" onkeypress="javascript:capsLock(event);"/>
					<br/>
					<span id="chkCapsLock" style="margin-left:44%; color:red; display:none;">CAPS LOCK</span>
				</div>
				
				<div class="login" onclick="submitUserData();">
					<span>sign in</span>
				</div>
				<div align="center" style="margin-top:10px;">
					Join LandS! <a href="#">Sign up</a> and enjoy!
					<br/>
					<a href="#">forgot ID or Password?</a>
				</div>
			</div>
		</form>
		<div class="open-overlay" style="display:block;">
			<span class="bar-top"></span>
			<span class="bar-middle"></span>
			<span class="bar-bottom"></span>
		</div>
		<div>
			
		</div>
	</section>
<!-- <section class="login">
	<div class="titulo">Sign In</div>
	<form action="#" method="post" enctype="application/x-www-form-urlencoded">
    	<input id="userId" type="text" required title="Username required" placeholder="Username" data-icon="U">
        <input id="userPw" type="password" required title="Password required" placeholder="Password" data-icon="x">
        <div class="olvido">
        	<div class="col"><a href="#" title="Ver Carásteres">Register</a></div>
            <div class="col"><a href="#" title="Recuperar Password">Fotgot Password?</a></div>
        </div>
        <a href="#" class="enviar" onclick="submitUserData();">Submit</a>
    </form>
</section> -->



<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/velocity/1.2.3/velocity.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/velocity/1.2.3/velocity.ui.min.js'></script>
<script src="/resources/js/index.js"></script>

</body>
<%@ include file="/WEB-INF/jsp/include/footer.jsp"%>
