import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../main.dart';

class SurveyLast extends StatefulWidget {
  
  final List<int?> subCategories;
  const SurveyLast({super.key, required this.subCategories });

  @override
  State<SurveyLast> createState() => _SurveyLastState(subCategories: subCategories);
}

class _SurveyLastState extends State<SurveyLast> {
 
  final List<int?> subCategories;
  _SurveyLastState({ required this.subCategories});

  Future<void> sendPostRequest(List<int?> categoryIds) async {
    final url = Uri.parse("http://localhost:8080/api/v1/members/categories");

    try {
      // 필터링: null 값을 제거하고 서버에 전송
      final filteredIds = categoryIds.whereType<int>().toList();

      // JSON body 생성
      final requestBody = jsonEncode({"ids": filteredIds});

      // Request Body 출력
      debugPrint("Request Body: $requestBody");

      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: requestBody,
      );

      if (response.statusCode == 200) {
        debugPrint("Post request successful: ${response.body}");
      } else {
        debugPrint("Failed to send post request: ${response.statusCode}");
      }
    } catch (e) {
      debugPrint("Error occurred while sending post request: $e");
    }
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
              '설문 완료',
              style: TextStyle(fontFamily: 'Inter Tight'),
            ),
            const Text(
              '맞춤 생성된 여향지 추천을 받아 보세요',
              style: TextStyle(
                fontFamily: 'Inter',
              ),
            ),
            
            
            SizedBox(
              width: 300,
              height: 40,
              child: TextButton(
                onPressed: () async {
                  await sendPostRequest(subCategories);

                  Navigator.pushAndRemoveUntil(
                    context, 
                    MaterialPageRoute(builder: 
                      (context) => MainApp(
                        
                        subCategories: subCategories,
                      )), 
                      (route)=>route.isFirst,
                      );
                  
                  // 다음 단계로 이동하는 로직 추가 가능
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  '설문 완료하기',
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