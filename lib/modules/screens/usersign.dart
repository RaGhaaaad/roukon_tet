import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:roukon/const/assets.dart';

import '../../companants/companants.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
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
                    height: 20.0,
                  ),
                  const Text(
                    '              قم بتسجيل الدخول      \n إن لم تكن تمتلك حسابا قم بالتسجيل ',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontFamily: 'din',
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  defaultButton(
                      function: () {},
                      text: 'التسجيل',
                      backgroundColor: Colors.white,
                      color: Color(0xff01A79B)),
                  SizedBox(
                    height: 40,
                  ),
                  defaultButton(
                    function: () {},
                    text: 'تسجيل دخول',
                    backgroundColor: Colors.white,
                    color: Color(0xff01A79B),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
