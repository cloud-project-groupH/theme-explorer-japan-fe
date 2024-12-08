import 'package:flutter/material.dart';

class SurveyMainWidget extends StatefulWidget {
  const SurveyMainWidget({super.key});

  @override
  State<SurveyMainWidget> createState() => _SurveyMainWidgetState();
}

class _SurveyMainWidgetState extends State<SurveyMainWidget> {
  var color1 = Colors.blue;
  var color2 = Colors.blue;
  var color3 = Colors.blue;
  var color4 = Colors.blue;
  var color5 = Colors.blue;

  Widget _buildToggleButton(String text, VoidCallback onPressed, Color color) {
    return SizedBox(
      width: 300,
      height: 40,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'Inter',
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // 여기서도 MaterialApp 사용하지 않는다. main.dart에서 라우트 관리.
    return Scaffold(
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
            Navigator.pop(context);
          },
        ),
        title: const Text(
          '설문 조사',
          style: TextStyle(
            fontFamily: 'Inter Tight',
            color: Colors.black,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: Align(
        alignment: const AlignmentDirectional(0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Q1',
              style: TextStyle(fontFamily: 'Inter Tight'),
            ),
            const Text(
              '어떤 주제의 여행을 하고 싶으신가요?',
              style: TextStyle(
                fontFamily: 'Inter',
              ),
            ),
            _buildToggleButton('역사/문화 탐방', () {
              setState(() {
                color1 = (color1 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color1),
            _buildToggleButton('유명 관광지', () {
              setState(() {
                color2 = (color2 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color2),
            _buildToggleButton('맛집 탐방', () {
              setState(() {
                color3 = (color3 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color3),
            _buildToggleButton('자연&힐링', () {
              setState(() {
                color4 = (color4 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color4),
            _buildToggleButton('이색 관광지', () {
              setState(() {
                color5 = (color5 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color5),
            SizedBox(
              width: 300,
              height: 40,
              child: TextButton(
                onPressed: () {
                  // 다음 단계로 이동하는 로직 추가 가능
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  '다음으로 넘어가기',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}