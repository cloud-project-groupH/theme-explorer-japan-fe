import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
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
      var response = await http.post(
        Uri.parse('http://localhost:8080/api/v1/auth/kakao'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $kakaoAccessToken',
        },
      );
      print('Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        var jwtAccessToken = data['accessToken'];
        var jwtRefreshToken = data['refreshToken'];

        // 여기서 jwtAccessToken, jwtRefreshToken을 secure storage 등 저장
        // 이후 약관 동의 여부 API 호출 또는 설문 필요 시 /login/term 이동
        Navigator.of(context).pushReplacementNamed('/login/term');
      } else {
        print('백엔드 로그인 실패: ${response.statusCode}, ${response.body}');
      }

    } catch (e) {
      print('카카오 로그인 에러: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      body: Align(
        alignment: AlignmentDirectional(0,0),
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
            ElevatedButton(
              onPressed: _loginWithKakao,
              child: const Text("카카오로 로그인"),
            ),
          ],
        ),
      ),
    );
  }
}