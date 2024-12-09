
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
class ChatRoomList extends StatelessWidget {
  final _title = 'chat room list';

  const ChatRoomList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
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
    final chatRooms = [
      {
        "name": "채팅방 이름",
        "image": "assets/images/choco.png",
        "recentDate": "최근 채팅 날짜",
        "recent": "최근 채팅",
        "number": "안 읽은 채팅 개수"


      },
      {
        "name": "채팅방 이름",
        "image": "assets/images/choco.png",
        "recentDate": "최근 채팅 날짜",
        "recent": "최근 채팅",
        "number": "안 읽은 채팅 개수"


      },
      {
        "name": "채팅방 이름",
        "image": "assets/images/choco.png",
        "recentDate": "최근 채팅 날짜",
        "recent": "최근 채팅",
        "number": "안 읽은 채팅 개수"


      }
      ];
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        
        backgroundColor: const Color(0xffF1F4F8),
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: IconButton(
            
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 24,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: const Text(
            '채팅방',
            style: TextStyle(
                  fontFamily: 'Inter Tight',
                  color: Colors.black,
                  fontSize: 22,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: chatRooms.length,
                  separatorBuilder: (BuildContext context, int index) => const Divider(), 
                  itemBuilder: (BuildContext context, int index){
                    return chatRoomEntity(
                      name:chatRooms[index]["name"].toString(),
                      image:chatRooms[index]["image"].toString(),
                      recentDate:chatRooms[index]["recentDate"].toString(),
                      recent:chatRooms[index]["recent"].toString(),
                      number:chatRooms[index]["number"].toString(),
                    );
                  },

                 
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Container chatRoomEntity({String image = 'assets/images/choco.png', String name = '채팅방 이름', String recentDate = '최근 채팅 날짜',String recent = '최근 채팅', String number = '안읽은 채팅 개수'}){

  return Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Color(0xffF1F4F8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                image,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(4),
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
                                            name,
                                            style: const TextStyle(
                                                  fontFamily: 'Inter Tight',
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            recentDate,
                                            style: const TextStyle(
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
                                            recent,
                                            style: const TextStyle(
                                                  fontFamily: 'Inter Tight',
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            number,
                                            style: const TextStyle(
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
                    );
  } 
}


