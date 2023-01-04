import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomText extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double fontSize;
  final double bottomPadding;
  final Color? color;
  final TextAlign textAlign;
  const CustomText({
    super.key,
    required this.text,
    this.fontFamily = 'din',
    this.fontSize = 25,
    this.bottomPadding = 10,
    this.textAlign = TextAlign.center,
    this.color,
    TextStyle? style,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: color ?? Color(0xffFFFFFF),
        ),
        textAlign: textAlign,
      ),
    );
  }
}
