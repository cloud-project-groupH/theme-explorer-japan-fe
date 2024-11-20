
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
class LocationPage extends StatelessWidget {
  final _title = 'location page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : _title,
      home: const LocationPageWidget(),
    );
  }
}

class LocationPageWidget extends StatefulWidget {
  const LocationPageWidget({super.key});

  @override
  State<LocationPageWidget> createState() => _LocationPageWidgetState();
}

class _LocationPageWidgetState extends State<LocationPageWidget> {
  

  

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
        
        backgroundColor: Color(0xffF1F4F8),
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: IconButton(
            
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 24,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Text(
            '여행지 이름',
            style: TextStyle(
                  fontFamily: 'Inter Tight',
                  color: Colors.black,
                  fontSize: 22,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/choco.png',
                          width: MediaQuery.sizeOf(context).width,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  '여행지 설명.......',
                                  style: TextStyle(
                  fontFamily: 'Inter Tight',
                  color: Colors.black,
                  fontSize: 14,
                  letterSpacing: 0.0,
                ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFAD705),
                                        size: 24,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFAD705),
                                        size: 24,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFAD705),
                                        size: 24,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFAD705),
                                        size: 24,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFAD705),
                                        size: 24,
                                      ),
                                      Text(
                                        '(투표횟수)',
                                        style: TextStyle(
                  fontFamily: 'Inter Tight',
                  color: Colors.black,
                  fontSize: 10,
                  letterSpacing: 0.0,
                ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                 IconButton(
                                    
                                    icon: Icon(
                                      Icons.check,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                  IconButton(
                                    
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Color(0xFFFF0303),
                                      size: 24,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '채팅방목록',
                                    style: TextStyle(
                  fontFamily: 'Inter Tight',
                  color: Colors.black,
                  fontSize: 16,
                  letterSpacing: 0.0,
                ),
                                  ),
                                  SizedBox(
                  width: 150,
                  height: 30,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    
                                         
                                      child: Text('여행 날짜 선택',
                            style: TextStyle(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            color: Colors.blue,
                            fontSize: 14,
                          ),),
                          style: OutlinedButton.styleFrom(
                                      elevation: 0,
                                      
                                      side: BorderSide(
                                        color: Colors.blue
                                      ),
                                      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),

                                      
                                    
                                  ),
                                  ),),
                                ],
                              ),
                            ),
                            Expanded(
                              child: ListView(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.black,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Container(
                                              width: 80,
                                              height: 80,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.asset(
                                                'assets/images/choco.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            '채팅방이름',
                                                            style: TextStyle(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                                                          ),
                                                          Text(
                                                            '채팅방 설명',
                                                            style: TextStyle(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            color: Colors.black,
                            fontSize: 12,
                          ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        '참가자 수',
                                                        style:
                                                            TextStyle(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            color: Colors.black,
                            fontSize: 14,
                          ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                   Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.black,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Container(
                                              width: 80,
                                              height: 80,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.asset(
                                                'assets/images/choco.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            '채팅방이름',
                                                            style: TextStyle(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                                                          ),
                                                          Text(
                                                            '채팅방 설명',
                                                            style: TextStyle(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            color: Colors.black,
                            fontSize: 12,
                          ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        '참가자 수',
                                                        style:
                                                            TextStyle(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            color: Colors.black,
                            fontSize: 14,
                          ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ), Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.black,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Container(
                                              width: 80,
                                              height: 80,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.asset(
                                                'assets/images/choco.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            '채팅방이름',
                                                            style: TextStyle(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                                                          ),
                                                          Text(
                                                            '채팅방 설명',
                                                            style: TextStyle(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            color: Colors.black,
                            fontSize: 12,
                          ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        '참가자 수',
                                                        style:
                                                            TextStyle(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            color: Colors.black,
                            fontSize: 14,
                          ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
