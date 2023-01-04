import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roukon/companants/service_provider_card.dart';

class Ministry_provider extends StatelessWidget {
  final String licensename;

  const Ministry_provider({
    Key? key,
    required this.licensename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Color(0xf707070), width: 3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Text(
              'استخراج ترخيص بائع متجول ',
              style: TextStyle(
                fontFamily: 'din',
                color: Color(0xff707070),
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 40,
              child: VerticalDivider(
                color: Color(0xff707070),
                width: 20,
                thickness: 2,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '150',
                          style: TextStyle(
                            color: Color(0xffD6AE00),
                            fontFamily: 'din',
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          'ريال ',
                          style: TextStyle(
                            color: Color(0xffB9B9B9),
                            fontFamily: 'din',
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 5),
                      child: Container(
                        height: 20,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff01A79B),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/shop.png", height: 10),
                            SizedBox(width: 5.0),
                            Text(
                              'سله الطلبات ',
                              style: TextStyle(
                                fontFamily: 'din',
                                fontSize: 13.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 5),
                      child: Container(
                        height: 20,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff01A79B),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/Send.png", height: 10),
                            SizedBox(width: 5.0),
                            Text(
                              'طلب فوري ',
                              style: TextStyle(
                                fontFamily: 'din',
                                fontSize: 13.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Ministry_provider> data = [
  Ministry_provider(
    licensename: '1  استخراج ترخيص بائع متجول ',
  ),
  Ministry_provider(
    licensename: '2  استخراج ترخيص بائع متجول ',
  ),
  Ministry_provider(
    licensename: '3  استخراج ترخيص بائع متجول ',
  ),
];
