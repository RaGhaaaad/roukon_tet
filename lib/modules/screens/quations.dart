import 'package:flutter/material.dart';

import 'package:roukon/companants/custom_text.dart';
import 'package:roukon/modules/screens/Cartogery/companants.dart';

import '../../companants/service_provider_card.dart';

class quations extends StatelessWidget {
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
                      height: 200,
                      width: 30,
                    )),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/images/Search.png", width: 18),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Text(
                  ' عرض سعر طلب  \n  رقم  00001 ',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'din',
                      fontWeight: FontWeight.w200),
                ),
              ),
            ),
            SizedBox(
              width: 20,
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
        height: 80,
        color: Color(0xff01A79B),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImage(
              asset: 'assets/images/home.png',
              h: 50,
            ),
            SizedBox(
              width: 5,
            ),
            CustomImage(
              asset: 'assets/images/profile.png',
              h: 50,
            ),
            SizedBox(
              width: 5,
            ),
            CustomImage(
              asset: 'assets/images/add.png',
              h: 50,
            ),
            SizedBox(
              width: 5,
            ),
            CustomImage(
              asset: 'assets/images/shopp.png',
              h: 50,
            ),
            SizedBox(
              width: 5,
            ),
            CustomImage(
              asset: 'assets/images/bell.png',
              h: 50,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) => data[index],
              separatorBuilder: (context, index) => SizedBox(
                height: 5,
              ),
            ),
          ),
          Text(
            'الاسعار لا تشمل الرسوم الحكوميه ',
            style: TextStyle(
              fontFamily: 'din',
              fontSize: 20,
              color: Color(0xffD6AE00),
            ),
          ),
        ],
      ),
    );
  }
}
