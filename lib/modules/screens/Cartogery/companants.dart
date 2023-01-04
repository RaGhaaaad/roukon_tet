import 'package:flutter/cupertino.dart';

class BottomItem extends StatelessWidget {
  final IconData icon;
  const BottomItem({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffFFE267),
        ),
        shape: BoxShape.circle,
      ),
      child: Icon(icon),
    );
  }
}

class CustomImage extends StatelessWidget {
  final String asset;
  final double h;

  const CustomImage({
    Key? key,
    required this.asset,
    required this.h,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //  padding: EdgeInsets.all(16),
      // decoration: BoxDecoration(
      // border: Border.all(
      //    color: Color(0xffFFE267),
      //  ),
      //   shape: BoxShape.circle,
      //  ),
      child: Image.asset(
        asset,
        height: h,
      ),
    );
  }
}
