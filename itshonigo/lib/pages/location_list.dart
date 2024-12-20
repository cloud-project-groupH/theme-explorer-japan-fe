
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LocationList extends StatelessWidget {
  final _title = 'location list';

  const LocationList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title : _title,
      home: const LocationListWidget(),
    );
  }
}

class LocationListWidget extends StatefulWidget {
  const LocationListWidget({super.key});

  @override
  State<LocationListWidget> createState() => _LocationListWidgetState();
}

class _LocationListWidgetState extends State<LocationListWidget> {
  final locations=[
    {
      "name":"여행지 이름",
      "image": 'assets/images/choco.png',
      "likes":"좋아요 갯수",
    },
    {
      "name":"여행지 이름",
      "image": 'assets/images/choco.png',
      "likes":"좋아요 갯수",
    },
    {
      "name":"여행지 이름",
      "image": 'assets/images/choco.png',
      "likes":"좋아요 갯수",
    },
    {
      "name":"여행지 이름",
      "image": 'assets/images/choco.png',
      "likes":"좋아요 갯수",
    },
  ];
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
          leading: IconButton(
            
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 24,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: const Text(
            '추천 여행지 목록',
            style: TextStyle(
                  fontFamily: 'Inter Tight',
                  color: Colors.black,
                  fontSize: 22,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: 70,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              alignment: const AlignmentDirectional(0, 0),
                              child: const Text(
                                '맛집 탐방',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      color:Colors.black,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                            child: VerticalDivider(
                              thickness: 2,
                              color:Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: 70,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              alignment: const AlignmentDirectional(0, 0),
                              child: const Text(
                                '관광지',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      color:Colors.black,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                            child: VerticalDivider(
                              thickness: 2,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: 70,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              alignment: const AlignmentDirectional(0, 0),
                              child: const Text(
                                '역사/문화',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      color:Colors.black,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                            child: VerticalDivider(
                              thickness: 2,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: 70,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              alignment: const AlignmentDirectional(0, 0),
                              child: const Text(
                                '자연/힐링',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      color:Colors.black,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    itemCount: locations.length,
                    itemBuilder: (context, index) {
                      return locationBox(
                        name: locations[index]["name"].toString(),
                        image: locations[index]["image"].toString(),
                        likes: locations[index]["likes"].toString(),
                      );
                    },
                    scrollDirection: Axis.vertical,
                    
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Container locationBox({String name="여행지 이름", String image = 'assets/images/choco.png', String likes = "좋아요 갯수"}){
    return Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                              Colors.white,
                              border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                image,
                                width: 140,
                                height: 140,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    name,
                                    style: const TextStyle(
                  fontFamily: 'Inter Tight',
                  color: Colors.black,
                  fontSize: 14,
                  letterSpacing: 0.0,
                ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        likes,
                                        style: const TextStyle(
                  fontFamily: 'Inter Tight',
                  color: Colors.black,
                  fontSize: 10,
                  letterSpacing: 0.0,
                ),
                                      ),
                                      const Icon(
                                        Icons.favorite_outlined,
                                        color: Color(0xFFF9010A),
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
  }
}
