import 'package:flutter/material.dart';
import 'login_page_widget.dart';
void main() {
  runApp(const LoginPageWidget());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
