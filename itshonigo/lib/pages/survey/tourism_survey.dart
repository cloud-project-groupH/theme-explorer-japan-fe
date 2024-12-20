import 'package:flutter/material.dart';
import 'package:itshownigo/entities/place/category/category_mapper.dart';
import 'restaurant_survey.dart';
import 'nature_healing_survey.dart';
import 'unique_survey.dart';
import 'confirm_survey.dart';

class SurveyThird extends StatefulWidget {
  final List<bool> categoriesCheck; 
  final List<int?> subCategories;
  const SurveyThird({super.key, required this.categoriesCheck, required this.subCategories });

  @override
  State<SurveyThird> createState() => _SurveyThirdState(categoriesCheck: categoriesCheck, subCategories: subCategories);
}

class _SurveyThirdState extends State<SurveyThird> {
  final List<bool> categoriesCheck;
  final List<int?> subCategories;
  _SurveyThirdState({required this.categoriesCheck, required this.subCategories});
  var color1 = Colors.blue;
  var color2 = Colors.blue;
  var color3 = Colors.blue;
  var color4 = Colors.blue;
  var color5 = Colors.blue;
  var color6 = Colors.blue;
  var color7 = Colors.blue;
  
  

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
              'Q3',
              style: TextStyle(fontFamily: 'Inter Tight'),
            ),
            const Text(
              '유명관광지의 세부 카테고리를 골라주세요',
              style: TextStyle(
                fontFamily: 'Inter',
              ),
            ),
            _buildToggleButton('랜드마크', () {
              setState(() {
                color1 = (color1 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color1),
            _buildToggleButton('쇼핑 스트리트', () {
              setState(() {
                color2 = (color2 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color2),
            _buildToggleButton('유명 거리', () {
              setState(() {
                color3 = (color3 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color3),
            _buildToggleButton('테마파크', () {
              setState(() {
                color4 = (color4 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color4),
            _buildToggleButton('전망대', () {
              setState(() {
                color5 = (color5 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color5),
            _buildToggleButton('현대 건축물', () {
              setState(() {
                color6 = (color6 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color6),
            _buildToggleButton('야경 스팟', () {
              setState(() {
                color7 = (color7 == Colors.blue) ? Colors.grey : Colors.blue;
              });
            }, color7),
            SizedBox(
              width: 300,
              height: 40,
              child: TextButton(
                onPressed: () {
                  if(color1 == Colors.grey){
                    subCategories.add(categoryMapping["랜드 마크"]);
                  }
                  if(color2 == Colors.grey){
                    subCategories.add(categoryMapping["쇼핑 스트리트"]);
                  }
                  if(color3 == Colors.grey){
                    subCategories.add(categoryMapping["유명 거리"]);
                  }
                  if(color4 == Colors.grey){
                    subCategories.add(categoryMapping["테마 파크"]);
                  }
                  if(color5 == Colors.grey){
                    subCategories.add(categoryMapping["전망대"]);
                  }
                  if(color6 == Colors.grey){
                    subCategories.add(categoryMapping["현대 건축물"]);
                  }
                  if(color7 == Colors.grey){
                    subCategories.add(categoryMapping["야경 스팟"]);
                  }
                  if(categoriesCheck[2]){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: 
                      (context) => SurveyFourth(
                        categoriesCheck: categoriesCheck,
                        subCategories: subCategories,
                      ))
                    );
                  }
                  else if(categoriesCheck[3]){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: 
                      (context) => SurveyFifth(
                        categoriesCheck: categoriesCheck,
                        subCategories: subCategories,
                      ))
                    );
                  }
                  else if(categoriesCheck[4]){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: 
                      (context) => SurveySixth(
                        categoriesCheck: categoriesCheck,
                        subCategories: subCategories,
                      ))
                    );
                  }
                  else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: 
                      (context) => SurveyLast(
                        
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