import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:roukon/companants/companants.dart';

class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 230),
            child: Text(' طرق الدفع ',
                style: TextStyle(
                  color: Color(0xffB7B7B7),
                  fontFamily: 'din',
                  fontSize: 15,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 30,
              right: 30,
            ),
            child: Stack(
              children: [
                Container(
                  height: 40,
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xff707070),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: Color(0xffB7B7B7),
                        height: 35,
                      )),
                      SizedBox(
                        width: 7,
                      ),
                      Expanded(
                          child: Container(
                        color: Color(0xffB7B7B7),
                        height: 35,
                      )),
                      SizedBox(
                        width: 7,
                      ),
                      Expanded(
                          child: Container(
                        color: Color(0xffB7B7B7),
                        height: 35,
                      )),
                      SizedBox(
                        width: 7,
                      ),
                      Expanded(
                          child: Container(
                        color: Color(0xffB7B7B7),
                        height: 35,
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  '  مبلغ الخدمة',
                  style: TextStyle(
                    color: Color(0xffB7B7B7),
                    fontFamily: 'din',
                    fontSize: 25,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '150',
                    style: TextStyle(
                      color: Color(0xffB7B7B7),
                      fontFamily: 'din',
                      fontSize: 25,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      'ريال سعودي',
                      style: TextStyle(
                        color: Color(0xffB7B7B7),
                        fontFamily: 'din',
                        fontSize: 11,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin:
                    EdgeInsetsDirectional.only(bottom: 20, end: 20, start: 20),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    suffixIconConstraints: BoxConstraints(maxHeight: 20),
                    suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/done.png',
                            width: 20,
                          ),
                        ]),
                    labelText: 'رقم البطاقة',
                    labelStyle: TextStyle(
                      color: Color(0xff7070705C),
                      fontFamily: 'ntaq',
                      fontSize: 20,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff178673), width: 2.0),
                    ),
                    // constraints: BoxConstraints.tightFor(width: 300, height: 100),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsetsDirectional.only(bottom: 20, end: 20, start: 20),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    suffixIconConstraints: BoxConstraints(maxHeight: 20),
                    suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/done.png',
                            width: 20,
                          ),
                        ]),
                    labelText: 'اسم حامل البطاقه ',
                    labelStyle: TextStyle(
                      color: Color(0xff7070705C),
                      fontFamily: 'ntaq',
                      fontSize: 20,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff178673), width: 2.0),
                    ),
                    // constraints: BoxConstraints.tightFor(width: 300, height: 100),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsetsDirectional.only(bottom: 20, end: 20, start: 20),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    suffixIconConstraints: BoxConstraints(maxHeight: 20),
                    suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/done.png',
                            width: 20,
                          ),
                        ]),
                    labelText: 'تاريخ انتهاء البطاقة ',
                    labelStyle: TextStyle(
                      color: Color(0xff7070705C),
                      fontFamily: 'ntaq',
                      fontSize: 20,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff178673), width: 2.0),
                    ),
                    // constraints: BoxConstraints.tightFor(width: 300, height: 100),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsetsDirectional.only(bottom: 20, end: 20, start: 20),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    suffixIconConstraints: BoxConstraints(maxHeight: 20),
                    suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/done.png',
                            width: 20,
                          ),
                        ]),
                    labelText: 'CCV',
                    labelStyle: TextStyle(
                      color: Color(0xff7070705C),
                      fontFamily: 'ntaq',
                      fontSize: 20,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff178673), width: 2.0),
                    ),
                    // constraints: BoxConstraints.tightFor(width: 300, height: 100),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: defaultButton(
              function: () {},
              text: 'ادفع',
              color: Colors.white,
              backgroundColor: Color(0xff01A79B),
            ),
          )
        ]),
      ),
    );
  }
}
