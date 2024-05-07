import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsItem extends StatelessWidget {
  const NewsItem(
      {super.key,
      required this.image,
      required this.title,
      required this.discription});
  final String image;
  final String title;
  final String discription;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 800.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image(
              height: 500.h,
              width: double.infinity,
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://images.unsplash.com/photo-1638303322325-ff70d6224a22?q=80&w=1943&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            // textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            title,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            // textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            discription,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
