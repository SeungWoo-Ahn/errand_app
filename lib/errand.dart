import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Errand extends StatelessWidget {
  const Errand({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Errand list',
      scrollBehavior: NoThumbScrollBehavior().copyWith(scrollbars: false),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 48,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Color(0xff1f1f21),
            onPressed: () {
              Navigator.pop(context);
            },
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
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.all(20),
            children: const [
              ErrandItem("서울 광진구", "시급 1만원", Color(0xffe0f4f8),
                  Color(0xff04bcd6), "8/6 오후 8:00", "팬싸 대리응모"),
              SizedBox(
                height: 16,
              ),
              ErrandItem("서울 마포구", "시급 5만원", Color(0xfff0e9ff),
                  Color(0xff8f5bff), "8/7 오후 12:00", "앨범 대리구매"),
              SizedBox(
                height: 16,
              ),
              ErrandItem("서울 구로구", "시급 7천원", Color(0xffffecfa),
                  Color(0xffff6cd6), "8/8 오전 7:32", "럭드 대리구매"),
              SizedBox(
                height: 16,
              ),
              ErrandItem("서울 마포구", "시급 5만원", Color(0xfff0e9ff),
                  Color(0xff8f5bff), "8/7 오후 12:00", "앨범 대리구매"),
              SizedBox(
                height: 16,
              ),
              ErrandItem("서울 마포구", "시급 5만원", Color(0xfff0e9ff),
                  Color(0xff8f5bff), "8/7 오후 12:00", "앨범 대리구매"),
              SizedBox(
                height: 16,
              ),
              ErrandItem("서울 마포구", "시급 5만원", Color(0xfff0e9ff),
                  Color(0xff8f5bff), "8/7 오후 12:00", "앨범 대리구매"),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ErrandItem extends StatelessWidget {
  const ErrandItem(this.location, this.price, this.priceColor, this.textColor,
      this.date, this.detail);

  final String location, price, date, detail;
  final Color priceColor, textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 24),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color(0xffbbc1d0),
              blurRadius: 3,
              offset: Offset(0, 3),
            )
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              location,
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
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
                color: priceColor,
              ),
              child: Text(
                price,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w800,
                  color: textColor,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          date,
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
            detail,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w800,
              color: Color(0xff3c88fa),
            ),
          ),
        ),
      ]),
    );
  }
}

class NoThumbScrollBehavior extends ScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
      };
}
