import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.image, required this.name});
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 600.w,
      height: 300.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            image,
          ),
        ),

        // color: Colors.blue
      ),
      child: Text(
        name,
        style: const TextStyle(
          color: Color(0xff88EE88),
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
    );
  }
}
