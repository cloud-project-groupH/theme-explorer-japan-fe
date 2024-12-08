import 'package:flutter/material.dart';
import 'survey_sixth.dart';

class SurveyFifth extends StatefulWidget {
  final List<bool> categoriesCheck; 
  final List<String> subCategories;
  const SurveyFifth({super.key, required this.categoriesCheck, required this.subCategories });

  @override
  State<SurveyFifth> createState() => _SurveyFifthState(categoriesCheck: categoriesCheck, subCategories: subCategories);
}

class _SurveyFifthState extends State<SurveyFifth> {
  final List<bool> categoriesCheck;
  final List<String> subCategories;
  _SurveyFifthState({required this.categoriesCheck, required this.subCategories});
  var color1 = Colors.blue;
  var color2 = Colors.blue;
  var color3 = Colors.blue;
  var color4 = Colors.blue;
  var color5 = Colors.blue;
  var color6 = Colors.blue;

  
  

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
              'Q5',
              style: TextStyle(fontFamily: 'Inter Tight'),
            ),
            const Text(
              '자연/힐링의 세부 카테고리를 골라주세요',
              style: TextStyle(
                fontFamily: 'Inter',
              ),
            ),
            _buildToggleButton('정원/공원', () {
              setState(() {
                color1 = (color1 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color1),
            _buildToggleButton('하천/호수', () {
              setState(() {
                color2 = (color2 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color2),
            _buildToggleButton('자연명소', () {
              setState(() {
                color3 = (color3 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color3),
            _buildToggleButton('온천/스파', () {
              setState(() {
                color4 = (color4 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color4),
            _buildToggleButton('꽃놀이', () {
              setState(() {
                color5 = (color5 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color5),
            _buildToggleButton('명상 체험', () {
              setState(() {
                color6 = (color6 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color6),
            
            SizedBox(
              width: 300,
              height: 40,
              child: TextButton(
                onPressed: () {
                  if(color1 == Colors.blue){
                    subCategories.add('정원/공원');
                  }
                  if(color2 == Colors.blue){
                    subCategories.add('하천/호수');
                  }
                  if(color3 == Colors.blue){
                    subCategories.add('자연명소');
                  }
                  if(color4 == Colors.blue){
                    subCategories.add('온천/스파');
                  }
                  if(color5 == Colors.blue){
                    subCategories.add('꽃놀이');
                  }
                  if(color6 == Colors.blue){
                    subCategories.add('명상 체험');

                  }
                  if(categoriesCheck[4]){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: 
                      (context) => SurveySixth(
                        categoriesCheck: categoriesCheck,
                        subCategories: subCategories,
                      ))
                    );
                  }
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