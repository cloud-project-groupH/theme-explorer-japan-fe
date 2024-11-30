import 'package:flutter/material.dart';
import 'package:itshownigo/chat_room_list.dart';
import 'package:itshownigo/likes_page.dart';
import 'package:itshownigo/location_page.dart';
import 'package:itshownigo/main_page.dart';
import 'login_page_widget.dart';
import 'survey_main_widget.dart';
import 'chat_room.dart';
import 'location_list.dart';
import 'my_page.dart';
import 'likes_page.dart';
void main() {

  runApp(MainApp());

}
class MainApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'itshonigo',
      home: MainWidget(),
    );
  }
}

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  State<MainWidget> createState() => MainWidgetState();

}

class MainWidgetState extends State<MainWidget> {
  final PageController _pageController = PageController();

  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    MainPage(),
    ChatRoomList(),
    MyPage(),
  ];
   @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: _pageController,
          children: [
            Scaffold(
              body: Center(child: _widgetOptions.elementAt(_selectedIndex),),
              bottomNavigationBar: BottomNavigationBar(
                
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(icon:Icon(Icons.home), label:'홈'),
                  BottomNavigationBarItem(icon:Icon(Icons.wechat_outlined), label:'채팅방'),
                  BottomNavigationBarItem(icon:Icon(Icons.manage_accounts), label: '마이페이지'),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.blue,
                backgroundColor: Colors.white,
                onTap: _onItemTapped,
              ),
            )
          ],
        )
      )
    );
  }
  
  

}