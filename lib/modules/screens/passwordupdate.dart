import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../companants/companants.dart';

var loginController = TextEditingController();

class LockScreen extends StatefulWidget {
  @override
  State<LockScreen> createState() => _LockScreenState();
}

class _LockScreenState extends State<LockScreen> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Image.asset(
                  'assets/images/lock.png',
                  height: 140.0,
                ),
                Text(
                  ' تم تغيير\n كلمة المرور بنجاح  ',
                  style: TextStyle(
                      fontFamily: 'din',
                      fontWeight: FontWeight.w400,
                      fontSize: 35.0,
                      color: Color(0xffB7B7B7)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                defaultButton(
                  text: 'تسجيل دخول ',
                  function: () {
                    if (formKey.currentState?.validate() ?? false) {
                      print(loginController.text);
                    }
                  },
                  backgroundColor: Color(0xff01A79B),
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
