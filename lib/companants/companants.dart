// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

Widget defaultButton(
        {required Color color,
        Color backgroundColor = Colors.white,
        required Function function,
        required String text}) =>
    Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(104),
        color: backgroundColor,
      ),
      child: MaterialButton(
        onPressed: function(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: CustomText(
            text: text,
            style: TextStyle(
              fontFamily: 'din',
              fontSize: 20,
            ),
            color: color,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
