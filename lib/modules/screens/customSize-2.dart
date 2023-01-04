import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:roukon/companants/companants.dart';

class CustomSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/ddone.png',
              height: 130.0,
            ),
            Text(
              ' تم الدفع بنجاح ',
              style: TextStyle(
                color: Color(0xffDDBB2B),
                fontFamily: 'din',
                fontWeight: FontWeight.w400,
                fontSize: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: defaultButton(
                color: Colors.white,
                function: () {},
                text: 'ر.س 150',
                backgroundColor: Color(0xff01A79B),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(
                  color: Color(0xff01A79B),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'تفاصيل الفاتورة',
                    style: TextStyle(
                      color: Color(0xff707070),
                      fontFamily: 'din',
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'اسم الخدمة',
                            style: TextStyle(
                                color: Color(0xffDDBB2B),
                                fontFamily: 'din',
                                fontSize: 16),
                          ),
                          Text(
                            ' استخراج تأشيرة',
                            style: TextStyle(
                                color: Color(0xff707070),
                                fontFamily: 'din',
                                fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                        child: VerticalDivider(
                          indent: 1,
                          thickness: 2,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'سعر الخدمة',
                            style: TextStyle(
                                color: Color(0xffDDBB2B),
                                fontFamily: 'din',
                                fontSize: 16),
                          ),
                          Text(
                            '150',
                            style: TextStyle(
                                color: Color(0xff707070),
                                fontFamily: 'din',
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '  منفذ الخدمة :',
                        style: TextStyle(
                          color: Color(0xff707070),
                          fontFamily: 'din',
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '   مكتب رقم 001  ',
                            style: TextStyle(
                              color: Color(0xffDDBB2B),
                              fontFamily: 'din',
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 0, left: 20, right: 70, bottom: 5),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/download.png',
                    width: 30,
                    height: 30,
                  ),
                  Text(
                    'تحميل الفاتورة',
                    style: TextStyle(
                        color: Color(0xffDDBB2B),
                        fontFamily: 'din',
                        fontSize: 30),
                  ),
                ],
              ),
            ),
            defaultButton(
              color: Colors.white,
              function: () {},
              text: 'متابعه الطلب ',
              backgroundColor: Color(0xff01A79B),
            )
          ],
        ),
      ),
    );
  }
}
