import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:roukon/modules/Terms.dart';
import 'package:roukon/modules/ordering.dart';
import 'package:roukon/modules/screens/signin.dart';
import 'modules/screens/customSize-2.dart';
import 'modules/screens/payment.dart';
import 'modules/screens/Cartogery/category.dart';
import 'modules/screens/home-1.dart';
import 'modules/screens/quations.dart';
import 'modules/screens/usersign.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            supportedLocales: const [
              Locale("ar"),
              Locale("en"),
            ],
            locale: const Locale("ar"),
            localizationsDelegates: const [
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            home: orderScreen());
      },
    );
  }
}
