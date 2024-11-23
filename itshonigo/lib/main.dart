import 'package:flutter/material.dart';
import 'package:itshownigo/chat_room_list.dart';
import 'login_page_widget.dart';
import 'survey_main_widget.dart';
import 'chat_room.dart';
void main() {
  runApp(ChatRoom());
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