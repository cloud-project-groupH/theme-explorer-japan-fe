
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'confirm_survey.dart';

class SurveySixth extends StatefulWidget {
  final List<bool> categoriesCheck; 
  final List<String> subCategories;
  const SurveySixth({super.key, required this.categoriesCheck, required this.subCategories });

  @override
  State<SurveySixth> createState() => _SurveySixthState(categoriesCheck: categoriesCheck, subCategories: subCategories);
}

class _SurveySixthState extends State<SurveySixth> {
  final List<bool> categoriesCheck;
  final List<String> subCategories;
  _SurveySixthState({required this.categoriesCheck, required this.subCategories});
  var color1 = Colors.blue;
  var color2 = Colors.blue;
  var color3 = Colors.blue;
  var color4 = Colors.blue;
  var color5 = Colors.blue;
  var color6 = Colors.blue;
  var color7 = Colors.blue;
  var color8 = Colors.blue;

  
  

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
              'Q6',
              style: TextStyle(fontFamily: 'Inter Tight'),
            ),
            const Text(
              '이색 관광지의 세부 카테고리를 골라주세요',
              style: TextStyle(
                fontFamily: 'Inter',
              ),
            ),
            _buildToggleButton('메이드 카페', () {
              setState(() {
                color1 = (color1 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color1),
            _buildToggleButton('도깨비 카페', () {
              setState(() {
                color2 = (color2 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color2),
            _buildToggleButton('신카이 마코토', () {
              setState(() {
                color3 = (color3 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color3),
            _buildToggleButton('최애의 아이', () {
              setState(() {
                color4 = (color4 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color4),
            _buildToggleButton('슬램 덩크', () {
              setState(() {
                color5 = (color5 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color5),
            _buildToggleButton('스트리트 아트', () {
              setState(() {
                color6 = (color6 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color6),
            _buildToggleButton('사무라이 체험', () {
              setState(() {
                color7 = (color7 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color7),
            _buildToggleButton('가부키 메이크업 체험', () {
              setState(() {
                color8 = (color8 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color8),
            
            SizedBox(
              width: 300,
              height: 40,
              child: TextButton(
                onPressed: () {
                  if(color1 == Colors.grey){
                    subCategories.add('메이드 카페');
                  }
                  if(color2 == Colors.grey){
                    subCategories.add('도깨비 카페');
                  }
                  if(color3 == Colors.grey){
                    subCategories.add('신카이 마코토');
                  }
                  if(color4 == Colors.grey){
                    subCategories.add('최애의 아이');
                  }
                  if(color5 == Colors.grey){
                    subCategories.add('슬램덩크');
                  }
                  if(color6 == Colors.grey){
                    subCategories.add('스트리트 아트');
                  }
                  if(color7 == Colors.grey){
                    subCategories.add('사무라이 체험');
                  }
                  if(color8 == Colors.grey){
                    subCategories.add('가부키 메이드업 체험');
                  }
                  
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: 
                    (context) => SurveyLast(
                      
                      subCategories: subCategories,
                    ))
                  );
                  
                  
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