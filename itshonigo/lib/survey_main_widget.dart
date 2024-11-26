
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SurveyMain extends StatelessWidget {
  final _title = 'survey main';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title : _title,
      home: const SurveyMainWidget(),
    );
  }
}
class SurveyMainWidget extends StatefulWidget {
  const SurveyMainWidget({super.key});

  @override
  State<SurveyMainWidget> createState() => _SurveyMainWidgetState();
}

class _SurveyMainWidgetState extends State<SurveyMainWidget> {

  

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
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      
      home: Scaffold(
        backgroundColor: Color(0xffF1F4F8),
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading:IconButton(
            
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
            '설문 조사',
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
        body:  Align(
            alignment: AlignmentDirectional(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Q1',
                  style: TextStyle(
                        fontFamily: 'Inter Tight',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  '어떤 주제의 여행을 하고 싶으신가요?',
                  style: TextStyle(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(

                      
                      foregroundColor: Colors.grey,
                      backgroundColor: Colors.blueAccent,
                      
                      
                      
                    ),
                    child: Text('역사/문화 탐방',
                            style: TextStyle(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            color: Colors.white
                          ),),
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(

                      
                      foregroundColor: Colors.grey,
                      backgroundColor: Colors.blueAccent,
                      
                      
                      
                    ),
                    child: Text('유명 관광지',
                            style: TextStyle(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            color: Colors.white
                          ),),
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(

                      
                      foregroundColor: Colors.grey,
                      backgroundColor: Colors.blueAccent,
                      
                      
                      
                    ),
                    child: Text('맛집 탐방',
                            style: TextStyle(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            color: Colors.white
                          ),),
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(

                      
                      foregroundColor: Colors.grey,
                      backgroundColor: Colors.blueAccent,
                      
                      
                      
                    ),
                    child: Text('자연&힐링',
                            style: TextStyle(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            color: Colors.white
                          ),),
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(

                      
                      foregroundColor: Colors.grey,
                      backgroundColor: Colors.blueAccent,
                      
                      
                      
                    ),
                    child: Text('이색 관광지',
                            style: TextStyle(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            color: Colors.white
                          ),),
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(

                      
                      foregroundColor: Colors.grey,
                      backgroundColor: Colors.blueAccent,
                      
                      
                      
                    ),
                    child: Text('다음으로 넘어가기',
                            style: TextStyle(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            color: Colors.white
                          ),),
                  ),
                ),
                
                
                
              ],
            ),
          
        ),
      ),
    );
  }
}
