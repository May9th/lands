<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
  <meta charset="UTF-8">
  <title>May 9th</title>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="/resources/css/style.css">
  <link rel="stylesheet" href="/resources/css/login.css">


	<script type="text/javascript">
		function doChangePage(e){
			var strMenuId = e.getAttribute("id");
			//각 메뉴마다 요청이 다름..
			document.location.href="/may9th/main/contact/"+strMenuId+".do";
		}
		
// 		$('input').focusin(function() {
// 			input = $(this);
// 			input.data('place-holder-text', input.attr('placeholder'))
// 			input.attr('placeholder', '');
// 		});
		
		function submitUserData(){
			var form = document.formLogin;
			form.action = "main/signIn.do";
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
  
</head>

<body background = "/resources/img/background.jpg">
	<div class="overlay-navigation">
		<nav role="navigation">
			<ul>
				<li><a id="home"     onclick="doChangePage(this);" data-content="The beginning">홈</a></li>
				<li><a id="about"    onclick="doChangePage(this);" data-content="Curious?">About</a></li>
				<li><a id="skills"   onclick="doChangePage(this);" data-content="I got game">Skills</a></li>
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
				
			</div>
		</form>
		<div class="open-overlay" style="display:block;">
			<span class="bar-top"></span>
			<span class="bar-middle"></span>
			<span class="bar-bottom"></span>
		</div>
	</section>




<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/velocity/1.2.3/velocity.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/velocity/1.2.3/velocity.ui.min.js'></script>
<script src="/resources/js/index.js"></script>

</body>
</html>
