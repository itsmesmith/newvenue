import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCircularIamge extends StatelessWidget {
  final String? Image;
  const CustomCircularIamge({Key? key, required this.Image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 45.w,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          //border: Border.all(color: Colors.white, width: 3),
          image: DecorationImage(image: AssetImage(Image!), fit: BoxFit.cover)),
    );
  }
}
