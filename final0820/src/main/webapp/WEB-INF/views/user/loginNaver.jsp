<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	var naver_id_login = new naver_id_login("c3B_nFy0kk6mprA8QcQ8", "http://192.168.0.115:8088/user/loginNaver");
	// 접근 토큰 값 출력
	//alert(naver_id_login.oauthParams.access_token);
	// 네이버 사용자 프로필 조회
	naver_id_login.get_naver_userprofile("naverSignInCallback()");
	function naverSignInCallback() { // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		//alert(naver_id_login.getProfileData('email'));
		//alert(naver_id_login.getProfileData('nickname'));
		//alert(naver_id_login.getProfileData('age'));
		location.href="/user/loginNaverResult?email="+naver_id_login.getProfileData('email');
	}
 </script>
</body>
</html>