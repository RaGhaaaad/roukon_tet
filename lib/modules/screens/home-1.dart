import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    final Items = <Widget>[
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentIndex == 0 ? Color(0xff01A79B) : Colors.transparent,
          // color: Color(0xff01A79B),
        ),
        child: Icon(
          Icons.home,
          size: currentIndex == 2 ? 20 : null,
          color: Colors.white,
        ),
      ),

      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentIndex == 1 ? Color(0xff01A79B) : Colors.transparent,
          //  color: Color(0xff01A79B),
        ),
        child: Icon(
          Icons.man_sharp,
          size: currentIndex == 2 ? 20 : null,
          color: Colors.white,
        ),
      ),

      //2
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentIndex == 2 ? Color(0xff01A79B) : Colors.transparent,
        ),
        child: Icon(
          Icons.add,
          size: currentIndex == 2 ? 25 : null,
          color: Colors.white,
        ),
      ),
      //3
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentIndex == 3 ? Color(0xff01A79B) : Colors.transparent,
        ),
        child: Icon(
          Icons.shopping_cart_checkout_outlined,
          size: currentIndex == 2 ? 25 : null,
          color: Colors.white,
        ),
      ),

      //4

      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentIndex == 4 ? Color(0xff01A79B) : Colors.transparent,
        ),
        child: Icon(
          Icons.notifications,
          size: currentIndex == 2 ? 25 : null,
          color: Colors.white,
        ),
      ),
    ];

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xff01A79B),
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.transparent,
        items: Items,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: Column(children: [
        Stack(
          children: [
            Container(
              height: 202,
              width: double.infinity,
              color: Color(0xffFDCF3D),
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Color(0xff01A79B),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).padding.top + 10,
                    ),
                    Image.asset(
                      'assets/images/Logoo.png',
                      height: 130,
                      width: 130,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).padding.top + 10,
              right: 20,
              child: Image.asset(
                'assets/images/menu.png',
                height: 25,
                width: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 165, right: 30, left: 30),
              child: Container(
                height: 30,
                width: 280,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Image.asset(
                        'assets/images/Search.png',
                      ),
                    ),
                    prefixIconConstraints: BoxConstraints(
                      maxWidth: 30,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            color: Colors.white30,
            child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                padding: const EdgeInsets.all(4.0),
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                children: <Ministry>[
                  Ministry(
                      'اسم الوزارة ', 'https://dummyimage.com/600x400/000/fff'),
                  Ministry(
                      'اسم الوزارة ', 'https://dummyimage.com/600x400/000/fff'),
                  Ministry(
                      'اسم الوزارة ', 'https://dummyimage.com/600x400/000/fff'),
                  Ministry(
                      'اسم الوزارة ', 'https://dummyimage.com/600x400/000/fff'),
                  Ministry(
                      'اسم الوزارة ', 'https://dummyimage.com/600x400/000/fff'),
                  Ministry(
                      'اسم الوزارة ', 'https://dummyimage.com/600x400/000/fff'),
                  Ministry(
                      'اسم الوزارة ', 'https://dummyimage.com/600x400/000/fff'),
                  Ministry(
                      'اسم الوزارة ', 'https://dummyimage.com/600x400/000/fff'),
                  Ministry(
                      'اسم الوزارة ', 'https://dummyimage.com/600x400/000/fff'),
                  Ministry(
                      'اسم الوزارة ', 'https://dummyimage.com/600x400/000/fff'),
                  Ministry(
                      'اسم الوزارة ', 'https://dummyimage.com/600x400/000/fff'),
                  Ministry(
                      'اسم الوزارة ', 'https://dummyimage.com/600x400/000/fff'),
                ].map((Ministry ministry) {
                  return GridTile(
                    header: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFFFE267))),
                        child:
                            Image.network(ministry.image, fit: BoxFit.cover)),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      color: Colors.transparent,
                      child: Text(
                        ministry.name,
                        style: TextStyle(color: Color(0xFF919191)),
                      ),
                    ),
                  );
                }).toList()),
          ),
        )
      ]),
    );
  }
}

class Ministry {
  final String name;
  final String image;

  Ministry(this.name, this.image);
}
