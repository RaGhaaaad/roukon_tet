import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../companants/companants.dart';

class OtpFormScreen extends StatefulWidget {
  @override
  State<OtpFormScreen> createState() => _OtpFormScreenState();
}

class _OtpFormScreenState extends State<OtpFormScreen> {
  TextEditingController controller = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.35),
          child: Column(
            children: [
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    // ignore: prefer_const_constructors
                    TextSpan(
                      text: 'رمز التأكيد ',
                      style: TextStyle(
                          fontFamily: 'din',
                          fontSize: 45,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffB7B7B7)),
                    ),
                    WidgetSpan(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                    TextSpan(
                      text:
                          ' الرجاء ادخال رمز الكود المرسل الي \n 966555555555+',
                      style: TextStyle(
                          fontFamily: 'din',
                          fontSize: 20.0,
                          color: Color(0xffB7B7B7)),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: PinCodeTextField(
                  keyboardType: TextInputType.number,
                  appContext: context,
                  controller: controller,
                  length: 4,
                  cursorHeight: 19,
                  enableActiveFill: true,
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    fieldWidth: 50,
                    inactiveColor: Color(0xff01A79B),
                    selectedColor: Color(0xff01A79B),
                    activeFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    borderWidth: 1,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  onChanged: (String value) {
                    print(value);
                  },
                ),
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'إعادة الارسال',
                    style: TextStyle(
                        fontFamily: 'din',
                        fontSize: 20.0,
                        color: Color(0xffB7B7B7)),
                  ),
                ]),
              ),
              SizedBox(
                height: 50,
              ),
              defaultButton(
                text: 'التأكيد',
                function: () {
                  if (formKey.currentState?.validate() ?? false) {
                    print(controller.text);
                  }
                },
                backgroundColor: Color(0xff01A79B),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
