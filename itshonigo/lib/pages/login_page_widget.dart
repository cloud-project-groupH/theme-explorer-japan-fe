import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';


class LoginPage extends StatelessWidget {
  final _title = 'login page';

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title : _title,
      home: const LoginPageWidget(),
    );
  }
}

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  final url = Uri.parse("http://localhost:8080/login/oauth2/code/kakao");

 

  @override
  void initState() {
    super.initState();
  }

  Future<void> _handleKakaoLogin() async {
    if (await canLaunchUrl(url)) {
      // Launch the Spring server's Kakao login endpoint
      await launchUrl(url);
      // Monitor if redirected back to the app with a token
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void dispose() {
    

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      
      home: Scaffold(
        backgroundColor: const Color(0xffF1F4F8),
        
        body:  Align(
            alignment: const AlignmentDirectional(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
              '잇쇼니 GO',
              style: TextStyle(
                fontFamily: 'Inter Tight',
                color: Colors.blue,
                fontSize: 50,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: GestureDetector(
                onTap: _handleKakaoLogin,
                child: Image.asset(
                  'assets/images/kakao_login_large_wide.png',
                  width: 288,
                  height: 89,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
              ],
            ),
          
        ),
      ),
    );
  }
}
