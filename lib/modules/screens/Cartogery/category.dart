import 'package:flutter/material.dart';
import 'package:roukon/modules/screens/Cartogery/companants.dart';

import '../../../companants/ministry_provider_card.dart';

class category extends StatefulWidget {
  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  int currentIndex = 0;

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
                      height: 30,
                      width: 25,
                    )),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/images/Search.png", width: 18),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Center(
                child: Text(
                  'اسم الوزارة',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'din',
                      fontWeight: FontWeight.w200),
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/back.png",
                  height: 20,
                  width: 20,
                )),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 55,
        color: Color(0xff01A79B),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImage(
              asset: 'assets/images/home.png',
              h: 45,
            ),
            SizedBox(
              width: 4,
            ),
            CustomImage(
              asset: 'assets/images/profile.png',
              h: 45,
            ),
            SizedBox(
              width: 4,
            ),
            CustomImage(
              asset: 'assets/images/add.png',
              h: 45,
            ),
            SizedBox(
              width: 4,
            ),
            CustomImage(
              asset: 'assets/images/shopp.png',
              h: 45,
            ),
            SizedBox(
              width: 4,
            ),
            CustomImage(
              asset: 'assets/images/bell.png',
              h: 45,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 100),
              child: Text(
                ' الرجاء اختيار احدي الخدمات الاتية ',
                style: TextStyle(
                  fontFamily: 'din',
                  fontSize: 20,
                  color: Color(0xff616161),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => data[index],
              separatorBuilder: (context, index) => SizedBox(height: 5),
              itemCount: data.length,
            ),
          ],
        ),
      ),
    );
  }
}
