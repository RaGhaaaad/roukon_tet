import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:roukon/companants/companants.dart';
import 'package:roukon/const/assets.dart';

class signScreen extends StatefulWidget {
  @override
  State<signScreen> createState() => _signScreenState();
}

class _signScreenState extends State<signScreen> {
  var phoneController = TextEditingController();

  var passwordController = TextEditingController();

  bool isPassword = true;

  bool right = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.bg),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0),
          child: Form(
            child: Column(
              children: [
                Image.asset(
                  Assets.logo,
                  height: 200,
                  width: 200,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(
                      bottom: 20, end: 35, start: 35),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    controller: phoneController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      prefixIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/images/lockk.png',
                              width: 20,
                            ),
                          ]),
                      labelText: '  966+ ',
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: 'ntaq',
                        fontSize: 20,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(
                      bottom: 20, end: 35, start: 35),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    controller: passwordController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      prefixIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/images/mobille.png',
                              height: 40,
                              width: 20,
                            ),
                          ]),
                      suffixIcon: Image.asset(
                        'assets/images/donee.png',
                      ),
                      suffixIconConstraints: BoxConstraints(maxHeight: 15),
                      labelText: '   كلمة المرور   ',
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: 'ntaq',
                        fontSize: 20,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        side: BorderSide(
                          color: Colors.white,
                        ),
                        checkColor: Color(0xff01A79B),
                        activeColor: Colors.white,
                        value: right,
                        onChanged: (val) {
                          setState(() {
                            right = val!;
                          });
                        }),
                    Text(
                      'تذكرني ',
                      style: TextStyle(
                          fontFamily: 'natq',
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        'نسيت كلمه المرور ؟ ',
                        style: TextStyle(
                            fontFamily: 'ntaq',
                            fontSize: 20.0,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'انشاء حساب',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'ntaq',
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    defaultButton(
                        color: Color(0xff01A79B),
                        function: () {},
                        text: 'تسجيل دخول '),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
