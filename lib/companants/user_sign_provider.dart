import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class user_sign_provider extends StatelessWidget {
  final String AssetsIamge;
  final String AssetsImage;
  const user_sign_provider({
    Key? key,
    required this.AssetsIamge,
    required Padding child,
    required this.AssetsImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
