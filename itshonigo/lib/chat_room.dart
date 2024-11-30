
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatRoom extends StatelessWidget {
  final _title = 'chat room';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title : _title,
      home: const ChatRoomWidget(),
    );
  }
}
class ChatRoomWidget extends StatefulWidget {
  const ChatRoomWidget({super.key});

  @override
  State<ChatRoomWidget> createState() => _ChatRoomWidgetState();
}

class _ChatRoomWidgetState extends State<ChatRoomWidget> {
  final chats = [
    {
      "name":"닉네임",
      "image": "assets/images/choco.png",
      "chat": "채팅 내용"
    },
    {
      "name":"닉네임",
      "image": "assets/images/choco.png",
      "chat": "채팅 내용"
    },
    {
      "name":"닉네임",
      "image": "assets/images/choco.png",
      "chat": "채팅 내용"
    }
  ];
  final TextEditingController _textEditingController = TextEditingController();
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
        resizeToAvoidBottomInset: true,
      
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
            '채팅방 이름',
            style:TextStyle(
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
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child:Align(
                        alignment: Alignment.topCenter,
                      child: ListView.builder(
                        reverse: true,
                        
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: chats.length,
                        itemBuilder: (context, index) {
                          return chatBox(
                              name:chats[index]["name"].toString(),
                              image:chats[index]["image"].toString(),
                              chat:chats[index]["chat"].toString(),

                          );
                        },
                        
                      ),
                      ),
                    ),
                    Container(
                      width: 350,
                      child: TextFormField(
                        controller: _textEditingController,
                        
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                                           
                          hintText: '채팅을입력하세요',
                          hintStyle:
                              TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          
                          
                          
                          filled: true,
                          fillColor:
                              Colors.white,
                          suffixIcon: Icon(
                            Icons.send,
                            color: Colors.black,
                          ),
                        ),
                        style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                        cursorColor: Colors.black,
                        
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
  Container chatBox({String name="닉네임",String image="assets/images/choco.png",String chat="채팅 내용"  }){
    return Container(
                            
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(6),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      image,
                                      fit: BoxFit.cover,
                                     ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        name,
                                        style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Container
                                      (
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black),
                                           ),
                                           child: 
                                                  Text(
                                                      chat,
                                              style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                              
                                            
                                       ),
                                      
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
  }
}
