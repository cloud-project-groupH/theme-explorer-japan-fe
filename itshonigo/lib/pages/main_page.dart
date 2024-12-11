import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '/entities/member/member_provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MainPage extends StatelessWidget {
  final _title = 'main page';

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: const MainPageWidget(),
    );
  }
}

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({super.key});

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  List<Map<String, dynamic>> popularList = [];

  final List<Map<String, String>> customList = [];

  @override
  void initState() {
    super.initState();
    _fetchPopularPlaces();
  }

  Future<void> _fetchPopularPlaces() async {
    try {
      final memberProvider = Provider.of<MemberProvider>(context, listen: false);
      final token = memberProvider.accessToken;

      final response = await http.get(
        Uri.parse('http://localhost:8080/api/v1/places/popular'),
        headers: {'Content-Type': 'application/json; charset=UTF-8',
          if (token != null) "Authorization": "Bearer $token",
        },
      );

      if (response.statusCode == 200) {
        final decodedBody = utf8.decode(response.bodyBytes);
        final data = jsonDecode(decodedBody) as List;

        debugPrint(data.toString());
        setState(() {
          popularList = data
              .map((place) => {
            "image": place['imageUrl'],
            "name": place['title'] ?? "여행지"
          })
              .toList();
        });
      } else {
        debugPrint('Failed to fetch popular places: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error fetching popular places: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final member = Provider.of<MemberProvider>(context).member;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xffF1F4F8),
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 40,
                height: 40,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: member?.profileUrl != null
                    ? Image.network(
                  member!.profileUrl!,
                  fit: BoxFit.cover,
                )
                    : null, // 기본 이미지를 사용하지 않음
              ),
              Text(
                '${member?.nickname ?? '사용자'} 님 반가워요',
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16,
                  letterSpacing: 0.0,
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        width: 350,
                        child: TextFormField(
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: '검색',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: const Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                          cursorColor: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 2,
                      color: Colors.grey,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '지금 인기있는 장소',
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
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: ListView.separated(
                          padding: const EdgeInsets.fromLTRB(
                            5,
                            0,
                            5,
                            0,
                          ),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: popularList.length,
                          separatorBuilder:
                              (BuildContext context, int index) =>
                          const VerticalDivider(),
                          itemBuilder: (context, index) {
                            return popular(
                              name: popularList[index]["name"].toString(),
                              image: popularList[index]["image"].toString(),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 2,
                        color: Colors.grey,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                '${member?.nickname ?? "사용자"}님을 위한 추천 여행지',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width,
                              height: 100,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child: ListView.separated(
                                padding: EdgeInsets.zero,
                                separatorBuilder:
                                    (BuildContext context, int index) =>
                                const Divider(),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: customList.length,
                                itemBuilder: (context, index) {
                                  return custom(
                                    name: customList[index]["name"].toString(),
                                    image: customList[index]["image"].toString(),
                                    explain:
                                    customList[index]["explain"].toString(),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column popular({required String image, required String name}) {
    debugPrint('Loading image: $image, Loading name: $name');
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: image.isNotEmpty
              ? Image.network(
            image,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              // 네트워크 이미지 로드 실패 시 기본 이미지 표시
              return Image.asset(
                'assets/images/japan.jpeg',
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              );
            },
          )
              : Image.asset(
            'assets/images/japan.jpeg', // 기본 이미지
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          name,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Inter',
            letterSpacing: 0.0,
          ),
        ),
      ],
    );
  }

  Row custom({required String name, required String image, required String explain}) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: image.isNotEmpty
              ? Image.network(
            image,
            width: 120,
            height: 100,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Image.asset(
                'assets/images/japan.jpeg',
                width: 120,
                height: 100,
                fit: BoxFit.cover,
              );
            },
          )
              : Image.asset(
            'assets/images/japan.jpeg',
            width: 120,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
                Text(
                  explain,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}