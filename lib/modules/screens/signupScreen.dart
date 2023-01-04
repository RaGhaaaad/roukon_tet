import 'package:flutter/material.dart';
import 'package:roukon/utils/decoration.dart';

import '../../companants/companants.dart';

class ThiredScreen extends StatefulWidget {
  @override
  State<ThiredScreen> createState() => _ThiredScreenState();
}

class _ThiredScreenState extends State<ThiredScreen> {
  var nameController = TextEditingController();

  var passwordController = TextEditingController();

  var numberController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  bool isPassword = true;
  bool right = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                      keyboardType: TextInputType.name,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      onChanged: (String value) {
                        print(value);
                      },
                      controller: nameController,
                      decoration: Customdecoration.textFieldDecoration),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    controller: (numberController),
                    decoration: InputDecoration(
                      hintText: 'كلمه المرور ',
                      hintStyle: TextStyle(
                        color: Color(0xff7070705C),
                        fontFamily: 'ntaq',
                      ),
                      prefixIconConstraints:
                          BoxConstraints(maxWidth: 30, maxHeight: 20),
                      prefixIcon: Row(
                        children: [
                          Image.asset(
                            'assets/images/lock.png',
                          ),
                        ],
                      ),
                      suffixIcon: Icon(
                        Icons.done,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    controller: (passwordController),
                    decoration: InputDecoration(
                      hintText: '+966',
                      hintStyle: TextStyle(
                        color: Color(0xff7070705C),
                        fontFamily: 'ntaq',
                      ),
                      prefixIconConstraints:
                          BoxConstraints(maxWidth: 30, maxHeight: 20),
                      prefixIcon: Row(
                        children: [
                          Image.asset(
                            'assets/images/mobile.png',
                          ),
                        ],
                      ),
                      suffixIcon: Icon(
                        Icons.done,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Row(
                    children: [
                      Checkbox(
                          side: BorderSide(
                            color: Color(0xff01A79B),
                          ),
                          checkColor: Colors.white,
                          activeColor: Color(0xff01A79B),
                          value: right,
                          onChanged: (val) {
                            setState(() {
                              right = val!;
                            });
                          }),
                      Text(
                        'بانشائك حسابك فأنت توافق ',
                        style: TextStyle(
                            fontFamily: 'ntaq',
                            fontSize: 16.0,
                            color: Color(0xff707070)),
                      ),
                    ],
                  ),
                ),
                Text(
                  ' اتفاقيه الاستخام',
                  style: TextStyle(
                      fontFamily: 'din',
                      fontSize: 16.0,
                      color: Color(0xff707070)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: defaultButton(
                    text: 'التسجيل',
                    function: () {
                      if (formKey.currentState?.validate() ?? false) {
                        print(nameController.text);
                        print(passwordController.text);
                        print(numberController.text);
                      }
                    },
                    backgroundColor: Color(0xff01A79B),
                    color: Colors.white,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
