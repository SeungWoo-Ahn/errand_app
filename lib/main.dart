import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Errand App',
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 53,
          titleSpacing: 24,
          title: Text(
            '덕부름',
            style: TextStyle(
              color: Color(0xff3C88FA),
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontFamily: "Asac",
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
          color: Colors.white,
          child: Column(children: [
            Container(
              padding: EdgeInsets.fromLTRB(14, 10, 14, 10),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                color: Color(0xfff8f8f8),
              ),
              child: Row(children: const [
                Text(
                  '공지',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '덕부름에 새로운 기능이 추가됐어요.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 172,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: Stack(children: [
                Image.asset(
                  'assets/cardimg.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.fill,
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.fromLTRB(20, 32, 20, 32),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'EVENT',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'SEVENTEEN Photo',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          '지금 이벤트 참가하고 세븐틴 굿즈 받기',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ]),
                )
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(18, 20, 24, 20),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                color: Color(0xff1f1f21),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '심부름 신청하러 가기',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Opacity(
                          opacity: 0.8,
                          child: Text(
                            '덕질 관련 심부를을 신청해 보세요!',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Color(0xff3E3E40),
                      ),
                      child: Icon(
                        Icons.east,
                        color: Colors.white,
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(4, 0, 0, 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '최근 등록된 심부름',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Container(
                    child: Row(children: const [
                      Text(
                        '더보기',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffb1b1b4),
                        ),
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Color(0xffb1b1b4),
                        size: 15,
                      ),
                    ]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              height: 158,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 152,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14.0)),
                      border: Border.all(
                        width: 1,
                        color: Color(0xfff1f1f1),
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(14, 14, 14, 18),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(6, 5, 6, 5),
                            decoration: BoxDecoration(
                              color: Color(0xffe0f4f8),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                            ),
                            child: Text(
                              '시급 1만원',
                              style: TextStyle(
                                  color: Color(0xff04bcd6),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '서울 광진구',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(16.0),
                                  ),
                                  color: Color(0xfff8f8f8),
                                ),
                                child: Text(
                                  '팬싸 대리응모',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xff3c88fa),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 26,
                                height: 26,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(13),
                                  ),
                                  color: Color(0xff3c88fa),
                                ),
                                child: Text(
                                  '+2',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '8/6 오후 8:00',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffb1b1b4),
                            ),
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 152,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14.0)),
                      border: Border.all(
                        width: 1,
                        color: Color(0xfff1f1f1),
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(14, 14, 14, 18),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(6, 5, 6, 5),
                            decoration: BoxDecoration(
                              color: Color(0xfff0e9ff),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                            ),
                            child: Text(
                              '시급 1만원',
                              style: TextStyle(
                                  color: Color(0xff8f5bff),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '서울 광진구',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(16.0),
                                  ),
                                  color: Color(0xfff8f8f8),
                                ),
                                child: Text(
                                  '행사 대리줄서기',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xff3c88fa),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '8/6 오후 8:00',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffb1b1b4),
                            ),
                          )
                        ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 29,
            ),
            Container(
              width: double.infinity,
              height: 86,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
                color: Color(0xfff7ffe7),
              ),
              padding: EdgeInsets.all(19),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(24),
                      ),
                      color: Color(0xffdbffac),
                    ),
                    child: Text(
                      'Tip!',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          '덕부름 이용 방법',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              '덕부름의 이용 방법을 알아보세요!',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff3e3e40),
                              ),
                            ),
                            Icon(
                              Icons.navigate_next,
                              size: 15,
                              color: Color(0xff6c6c6c),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class Errand extends StatelessWidget {
  const Errand({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Errand list',
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 48,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Color(0xff1f1f21),
            onPressed: () {},
          ),
          centerTitle: true,
          title: Text(
            '심부름',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w800,
              color: Color(0xff1f1f21),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 24),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffbbc1d0),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '서울 광진구',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff1f1f21),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(6),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                              color: Color(0xffe0f4f8),
                            ),
                            child: Text(
                              '시급 1만원',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff04bcd6),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '8/6 오후 8:00',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff9a9a9a),
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xfff4f8ff),
                        ),
                        child: Text(
                          '팬싸 대리응모',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff3c88fa),
                          ),
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 24),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffbbc1d0),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '서울 마포구',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff1f1f21),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(6),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                              color: Color(0xfff0e9ff),
                            ),
                            child: Text(
                              '시급 5만원',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff8f5bff),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '8/7 오후 12:00',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff9a9a9a),
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xfff4f8ff),
                        ),
                        child: Text(
                          '앨범 대리구매',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff3c88fa),
                          ),
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 24),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffbbc1d0),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '서울 구로구',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff1f1f21),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(6),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                              color: Color(0xffffecfa),
                            ),
                            child: Text(
                              '시급 7천원',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w800,
                                color: Color(0xffff6cd6),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '8/8 오전 7:32',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff9a9a9a),
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xfff4f8ff),
                            ),
                            child: Text(
                              '앨범 대리구매',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff3c88fa),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xfff4f8ff),
                            ),
                            child: Text(
                              '럭드 대리구매',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff3c88fa),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xfff4f8ff),
                            ),
                            child: Text(
                              '팬싸 대리응모',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff3c88fa),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xfff4f8ff),
                        ),
                        child: Text(
                          '행사 대리줄서기',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff3c88fa),
                          ),
                        ),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
