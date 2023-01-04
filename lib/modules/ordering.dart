import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class orderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Color(0xffFFE267),
        backgroundColor: Color(0xff01A79B),
        centerTitle: true,
        title: Row(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/images/menu.png",
                      height: 100,
                      width: 30,
                    )),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/images/Search.png", width: 20),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Text(
                  'طلب خدمة',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'din',
                      fontWeight: FontWeight.w200),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/back.png",
                    height: 20,
                    width: 20,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
