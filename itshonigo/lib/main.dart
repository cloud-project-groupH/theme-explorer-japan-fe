import 'package:flutter/material.dart';
import 'pages/login_page_widget.dart';
import 'pages/survey_main_widget.dart';
import 'pages/my_page.dart';
import 'pages/main_page.dart';
import 'pages/chat_room_list.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:kakao_flutter_sdk_common/kakao_flutter_sdk_common.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_common.dart';
import 'package:kakao_flutter_sdk_auth/kakao_flutter_sdk_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  //runApp() 호출 전 flutter sdk 초기화
  KakaoSdk.init(
    nativeAppKey: dotenv.env['NATIVE_APP_KEY'],
    javaScriptAppKey: dotenv.env['JAVASCRIPT_APP_KEY'],
  );
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'itshonigo',
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPageWidget(),
        '/login/term': (context) => const SurveyMainWidget(),
        '/main': (context) => const MainApp(),
        '/mypage': (context) => const MyPage(),
      },
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Widget> _pages = <Widget>[
    const MainPage(),
    const ChatRoomList(),
    const MyPage(),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onItemTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.wechat_outlined), label: '채팅방'),
          BottomNavigationBarItem(icon: Icon(Icons.manage_accounts), label: '마이페이지'),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}