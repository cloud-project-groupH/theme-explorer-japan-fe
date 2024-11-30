
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LikesPage extends StatelessWidget {
  final _title = 'location page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : _title,
      debugShowCheckedModeBanner: false,
      home: const LikesPageWidget(),
    );
  }
}


class LikesPageWidget extends StatefulWidget {
  const LikesPageWidget({super.key});

  @override
  State<LikesPageWidget> createState() => _LikesPageWidgetState();
}

class _LikesPageWidgetState extends State<LikesPageWidget> {
  

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
    final likes =[
      {
          "name":"여행지 이름",
          "explain":"여행지 설명",
          "image":'assets/images/choco.png',
      },
      {
          "name":"여행지 이름",
          "explain":"여행지 설명",
          "image":'assets/images/choco.png',
      },
      {
          "name":"여행지 이름",
          "explain":"여행지 설명",
          "image":'assets/images/choco.png',
      },
    ];
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
       
        backgroundColor: Color(0xffF1F4F8),
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: IconButton(
            
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () async {
             
            },
          ),
          title: Text(
            '좋아요 목록',
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: likes.length,
                separatorBuilder: (BuildContext context, int index) => const Divider(), 
                itemBuilder: (context, index){
                  return likeBox(
                    name:likes[index]["name"].toString(),
                    image:likes[index]["image"].toString(),
                    explain:likes[index]["explain"].toString(),


                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  Padding likeBox({String name="여행지 이름",String explain="여행지 설명",String image= 'assets/images/choco.png'}){
    return Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0),
                        border: Border.all(
                          color: Color(0xFF707070),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    name,
                                    style: TextStyle(
                                          fontFamily: 'Inter',
                                          color:Colors.black,
                                          fontSize: 16,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Text(
                                  explain,
                                  style: TextStyle(
                                    color:Colors.black,
                                          fontSize: 14,
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                image,
                                width: 110,
                                height: 110,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
  }
}
