
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  final _title = 'main page';

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : _title,
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
  final popularList =[
    {
      "image":'assets/images/choco.png',
      "name":"여행지",
    },
    {
      "image":'assets/images/choco.png',
      "name":"여행지",
    },
    {
      "image":'assets/images/choco.png',
      "name":"여행지",
    },
    {
      "image":'assets/images/choco.png',
      "name":"여행지",
    }
  ];
  final customList=[
    {
      "name" : "여행지 이름",
      "image": 'assets/images/choco.png',
      "explain": "여행지 설명"
    },
    {
    
      "name" : "여행지 이름",
      "image": 'assets/images/choco.png',
      "explain": "여행지 설명"
    },
    {
    
      "name" : "여행지 이름",
      "image": 'assets/images/choco.png',
      "explain": "여행지 설명"
    },
    {
    
      "name" : "여행지 이름",
      "image": 'assets/images/choco.png',
      "explain": "여행지 설명"
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
                child: Image.asset(
                                    'assets/images/choco.png',
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
              ),
              const Text(
                '사용자이름',
                style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 20,
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
                          controller: _textEditingController,
                          
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
                          style:
                              const TextStyle(
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
                          color:
                              Colors.white,
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
                          separatorBuilder: (BuildContext context, int index) => const VerticalDivider(), 
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
                        const Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                '사용자님을 위한 추천 여행지',
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
                                separatorBuilder: (BuildContext context, int index) => const Divider(), 
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: customList.length,
                                itemBuilder: (context, index) {
                                  return custom(
                                    name:customList[index]["name"].toString(),
                                    image:customList[index]["image"].toString(),
                                    explain:customList[index]["explain"].toString(),
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
  Column popular({String image='assets/images/choco.png',String name="여행지"}){
    return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    image,
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
  Row custom({String name = "여행지 이름", String image = 'assets/images/choco.png', String explain = "여행지 설명"}){
    return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          image,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                                style:
                                                    const TextStyle(
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
