
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyPage extends StatelessWidget {
  final _title = 'location page';

  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : _title,
      debugShowCheckedModeBanner: false,
      home: const MyPageWidget(),
    );
  }
}

class MyPageWidget extends StatefulWidget {
  const MyPageWidget({super.key});

  @override
  State<MyPageWidget> createState() => _MyPageWidgetState();
}

class _MyPageWidgetState extends State<MyPageWidget> {


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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
       
        backgroundColor: const Color(0xffF1F4F8),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          automaticallyImplyLeading: false,
          leading: IconButton(
            
            
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 24,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: const Text(
            '마이페이지',
            style: TextStyle(
                  fontFamily: 'Inter Tight',
                  color: Colors.white,
                  fontSize: 22,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 200,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Container(
                        height: 100,
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/choco.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      '사용자 이름',
                                      style: TextStyle
                                          (
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            fontSize: 16,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      '시용자 소개',
                                      style: TextStyle(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: 220,
                        decoration: BoxDecoration(
                          color:
                              Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '여행 지도',
                                      style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Inter',
                                            fontSize: 16,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    IconButton(
                                      
                                      icon: const Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                thickness: 2,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '좋아요 목록',
                                      style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Inter',
                                            fontSize: 16,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    IconButton(
                                      
                                      icon: const Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                thickness: 2,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '로그아웃',
                                      style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Inter',
                                            fontSize: 16,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    IconButton(
                                      
                                      icon: const Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xFF060606),
                                        size: 24,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
