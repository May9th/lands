<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<script type="text/javascript" src ="https://cdnjs.cloudflare.com/ajax/libs/vue/2.2.1/vue.min.js"></script>
	<script type=”text/javascript” src=”js/hello.js”></script>
	<script type=”text/javascript” src=”js/google_oauth.js”></script>
</head>
<body>
	<script type="text/javascript">
	function login(){
		hello('google').login({scope: 'email'}).then(function(auth) {
			hello(auth.network).api('/me').then(function(r) {
				console.log(JSON.stringify(auth));
				accessToken = auth.authResponse.access_token;
				console.log(accessToken);
				getGoogleMe(); // 로그인 하자마자 바로 사용자 정보 호출한다.
			});
		});
	}
	function getGoogleMe(){
		hello('google').api('me').then(
				function(json) {
					console.log(JSON.stringify(json));
					name = json.name;
		    		email = json.email;
		    		domain = json.domain;
		    		thumbnail = json.thumbnail;
					console.log('name   : ' + name);
		    		console.log('email  : ' + email);
		    		console.log('domain : ' + domain);
		    		console.log('thumbnail : ' + thumbnail);
		    		loginComplete();// JSNI에 정의 되어있다.
				}, 
				function(e) {
		    		console.log('me error : ' + e.error.message);
		    	});
	}
	function logout(){
		hello('google').logout().then(
				function() {
					console.log('logout');
				},
				function(e) {
					console.log('Signed out error: ' + e.error.message);
		    	});
	}
	</script>
	<div></div>

	<button onclick=”login()”>Google LogIn</button>
	<button onclick=”logout()”>Google Logout</button>
	<a href="https://accounts.google.com/o/oauth2/auth?
    client_id=118861096480-3o3s339o0t8vhtucl76dft5tj0sgsh61.apps.googleusercontent.com
    &redirect_uri=http://www.may9th.mooo.com
    &scope=https://www.googleapis.com/auth/plus.login
    &response_type=code">로그인</a>

	
</body>
</html>
