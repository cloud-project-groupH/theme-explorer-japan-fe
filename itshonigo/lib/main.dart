import 'package:flutter/material.dart';
import 'pages/login_page_widget.dart';
import 'pages/survey/survey_main_widget.dart';
import 'pages/my_page.dart';
import 'pages/main_page.dart';
import 'pages/chat/chat_room_list.dart';
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
        '/main': (context) => const MainApp(subCategories: [],),
        '/mypage': (context) => const MyPage(),
        '/survey': (context) => const SurveyMainWidget(),
      },
    );
  }
}

class MainApp extends StatefulWidget {
  final List<int?> subCategories;
  const MainApp({super.key, required this.subCategories});

  @override
  State<MainApp> createState() => _MainAppState(subCategories: subCategories);
}

class _MainAppState extends State<MainApp> {
  final List<int?> subCategories;
  final PageController _pageController = PageController();
  _MainAppState({required this.subCategories});
  int _currentIndex = 0;

  final List<Widget> _pages = <Widget>[
    const MainPageWidget(),
    const ChatRoomListWidget(),
    const MyPageWidget(),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onItemTapped(int index) {
    for (int? category in subCategories){
      debugPrint(category?.toString());
    }
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