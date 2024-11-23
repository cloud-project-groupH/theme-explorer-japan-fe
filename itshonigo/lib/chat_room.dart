
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatRoom extends StatelessWidget {
  final _title = 'chat room';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                      child: ListView(
                        reverse: true,
                        
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Container(
                            
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
                                      'assets/images/choco.png',
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
                                        '닉네임',
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
                                                      '채팅내용',
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
                          ),
                        ],
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
}
