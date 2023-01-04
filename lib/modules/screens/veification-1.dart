import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class VerfiactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Image.asset(
                'assets/images/icon.png',
                height: 170.0,
              ),
              Text(
                ' تم انشاء \n حسابك بنجاح  ',
                style: TextStyle(
                    fontFamily: 'din',
                    fontSize: 40.0,
                    color: Color(0xffB7B7B7)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
