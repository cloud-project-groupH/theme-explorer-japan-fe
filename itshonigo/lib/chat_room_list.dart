
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
class ChatRoomList extends StatelessWidget {
  final _title = 'chat room list';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : _title,
      home: const ChatRoomListWidget(),
    );
  }
}

class ChatRoomListWidget extends StatefulWidget {
  const ChatRoomListWidget({super.key});

  @override
  State<ChatRoomListWidget> createState() => _ChatRoomListWidgetState();
}

class _ChatRoomListWidgetState extends State<ChatRoomListWidget> {
  

  
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
        
        backgroundColor: Colors.white,
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
            '채팅방',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/choco.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(4),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '채팅방이름',
                                            style: TextStyle(
                                                  fontFamily: 'Inter Tight',
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            '최근 채팅 날짜',
                                            style: TextStyle(
                                                  fontFamily: 'Inter Tight',
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '최근 채팅',
                                            style: TextStyle(
                                                  fontFamily: 'Inter Tight',
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            '안읽은 채팅 갯수',
                                            style: TextStyle(
                                                  fontFamily: 'Inter Tight',
                                                  color: Colors.orange,
                                                  fontSize: 12,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/choco.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(4),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '채팅방이름',
                                            style: TextStyle(
                                                  fontFamily: 'Inter Tight',
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            '최근 채팅 날짜',
                                            style: TextStyle(
                                                  fontFamily: 'Inter Tight',
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '최근 채팅',
                                            style: TextStyle(
                                                  fontFamily: 'Inter Tight',
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            '안읽은 채팅 갯수',
                                            style: TextStyle(
                                                  fontFamily: 'Inter Tight',
                                                  color: Colors.orange,
                                                  fontSize: 12,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
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
      ),
    );
  }
}
