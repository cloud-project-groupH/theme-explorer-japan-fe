import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class LoginPage extends StatelessWidget {
  final _title = 'login page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : _title,
      home: const LoginPageWidget(),
    );
  }
}

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  

 

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        backgroundColor: Color(0xffF1F4F8),
        
        body:  Align(
            alignment: AlignmentDirectional(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Text(
                    '잇쇼니 GO',
                    style: TextStyle(
                          fontFamily: 'Inter Tight',
                          color: Colors.blue,
                          fontSize: 50,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 1),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/kakao_login_large_wide.png',
                      width: 288,
                      height: 89,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment(0, 0),
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
