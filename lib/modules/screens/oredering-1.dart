import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Image.asset(
                'assets/images/iconn.png',
                height: 100.0,
              ),
              Text(
                ' تم ارسال طلبك  ',
                style: TextStyle(
                    fontFamily: 'din',
                    fontSize: 30.0,
                    color: Color(0xff178471)),
                textAlign: TextAlign.center,
              ),
              Text(
                'في انتظار عروض  الاسعار  ',
                style: TextStyle(
                    fontFamily: 'din',
                    fontSize: 25.0,
                    color: Color(0xffD6AE00)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
