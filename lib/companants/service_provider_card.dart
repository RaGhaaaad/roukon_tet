import 'package:flutter/material.dart';

import 'custom_text.dart';

class ServiceProviderCard extends StatelessWidget {
  final String providerName;
  final String asset;
  final Function() onAcceptOffer;
  const ServiceProviderCard({
    Key? key,
    required this.providerName,
    required this.asset,
    required this.onAcceptOffer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xf707070), width: 3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Image.asset(
                  asset,
                  height: 23,
                  width: 23,
                ),
                Text(
                  '  ${providerName}',
                  style: TextStyle(
                    fontFamily: 'din',
                    color: Color(0xff707070),
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
            child: VerticalDivider(
              color: Color(0xff707070),
              width: 20,
              thickness: 0.5,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                Container(
                  height: 2, // Thickness

                  color: Colors.grey,
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Color(0xff01A79B),
                            content: Container(
                              decoration: new BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: new BorderRadius.all(
                                    new Radius.circular(60)),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/iicon.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                  Text(
                                    'هل تريد  قبول عرض ؟ ',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Color(0xffFFE267),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'مزود خدمة 001',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        " |",
                                        style: TextStyle(
                                            color: Color(0xffFFE267),
                                            fontSize: 25),
                                      ),
                                      Text(
                                        ' 150 ريال ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 2),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Text(
                                              ' نعم ',
                                              style: TextStyle(
                                                color: Color(0xff01A79B),
                                                fontFamily: 'din',
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 2),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Text(
                                              '   لا  ',
                                              style: TextStyle(
                                                color: Color(0xff01A79B),
                                                fontFamily: 'din',
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFFE267),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 2),
                      child: CustomText(
                        text: 'قبول العرض ',
                        color: const Color(0xff01A79B),
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<ServiceProviderCard> data = [
  ServiceProviderCard(
    asset: 'assets/images/support.png',
    onAcceptOffer: () {},
    providerName: ' 1 مزود خدمة',
  ),
  ServiceProviderCard(
    asset: 'assets/images/support.png',
    onAcceptOffer: () {},
    providerName: ' 2 مزود خدمة',
  ),
  ServiceProviderCard(
    asset: 'assets/images/support.png',
    onAcceptOffer: () {},
    providerName: '  3مزود خدمة',
  )
];
