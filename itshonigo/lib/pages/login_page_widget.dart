import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import '../entities/member/member_provider.dart';
import '../entities/member/member.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  // Secure Storage 인스턴스 생성
  final _secureStorage = const FlutterSecureStorage();

  Future<void> _loginWithKakao() async {
    try {
      // 카카오톡 설치 여부 체크 후 로그인
      if (await isKakaoTalkInstalled()) {
        await UserApi.instance.loginWithKakaoTalk();
      } else {
        await UserApi.instance.loginWithKakaoAccount();
      }

      // 카카오 토큰 얻기
      var token = await TokenManagerProvider.instance.manager.getToken();
      var kakaoAccessToken = token?.accessToken;

      print("kakaoAccessToken: $kakaoAccessToken"); // 실제 값 출력

      // Spring 서버로 POST 요청
      var response = await http.post(
        Uri.parse('http://localhost:8080/api/v1/auth/kakao'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $kakaoAccessToken',
        },
      );

      print('Status Code: ${response.statusCode}');
      var decodedBody = utf8.decode(response.bodyBytes);
      print('Response Body: $decodedBody');

      if (response.statusCode == 200) {
        var data = jsonDecode(decodedBody);

        // JWT AccessToken 및 RefreshToken 저장
        var jwtAccessToken = data['accessToken'];
        var jwtRefreshToken = data['refreshToken'];

        final memberProvider = Provider.of<MemberProvider>(context, listen: false);
        memberProvider.setAuthTokens(jwtAccessToken, jwtRefreshToken);

        await _secureStorage.write(key: 'accessToken', value: jwtAccessToken);
        await _secureStorage.write(key: 'refreshToken', value: jwtRefreshToken);

        print("JWT Access Token: $jwtAccessToken");
        print("JWT Refresh Token: $jwtRefreshToken");

        // 사용자 정보 요청
        await _fetchUserInfo();

        // 약관 동의 여부에 따라 화면 이동
        Navigator.of(context).pushReplacementNamed('/login/term');
      } else {
        print('백엔드 로그인 실패: ${response.statusCode}, $decodedBody');
      }
    } catch (e) {
      print('카카오 로그인 에러: $e');
    }
  }

  Future<void> _fetchUserInfo() async {
    try {
      // Secure Storage에서 JWT Access Token 가져오기
      var jwtAccessToken = await _secureStorage.read(key: 'accessToken');

      if (jwtAccessToken != null) {
        // 사용자 정보 요청
        var response = await http.get(
          Uri.parse('http://localhost:8080/api/v1/members/profile'),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $jwtAccessToken',
          },
        );

        var decodedBody = utf8.decode(response.bodyBytes);
        print('User Info Raw Response: $decodedBody');

        if (response.statusCode == 200) {
          var userInfo = jsonDecode(decodedBody);

          final memberProvider = Provider.of<MemberProvider>(context, listen: false);
          memberProvider.setUser(
            Member(
              id: userInfo['data']['id'],
              nickname: userInfo['data']['nickname'],
              email: userInfo['data']['email'],
              profileUrl: userInfo['data']['profileUrl'],
            ),
          );

          print("User Info: $userInfo");
        } else {
          print('사용자 정보 API 호출 실패: ${response.statusCode}, ${response.body}');
        }
      } else {
        print('JWT Access Token이 없습니다.');
      }
    } catch (e) {
      print('사용자 정보 API 호출 에러: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      body: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              '잇쇼니 GO',
              style: TextStyle(
                fontFamily: 'Inter Tight',
                color: Colors.blue,
                fontSize: 50,
              ),
            ),
            GestureDetector(
              onTap: _loginWithKakao,
              child: Image.asset(
                'assets/images/kakao_login_large_wide.png', // 이미지 경로
                width: 250,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}