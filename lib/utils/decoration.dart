import 'package:flutter/material.dart';

class Customdecoration {
  static var textFieldDecoration = InputDecoration(
      hintText: 'الاسم ',
      hintStyle: TextStyle(
        color: Color(0xff7070705C),
        fontFamily: 'ntaq',
      ),
      prefixIconConstraints: BoxConstraints(maxWidth: 30, maxHeight: 20),
      prefixIcon: Row(
        children: [
          Image.asset(
            'assets/images/user.png',
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
      suffixIcon: Icon(
        Icons.done,
        color: Colors.green,
      ));

  static var textStyle = TextStyle(
    fontSize: 20,
  );
}
