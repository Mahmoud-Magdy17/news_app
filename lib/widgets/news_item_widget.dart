import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsItem extends StatelessWidget {
  const NewsItem(
    {super.key, required this.article}
  );
  final Article article;
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
                article.image ??
                'https://th.bing.com/th/id/R.18f14463a91f8316ec8daea09ab5baaf?rik=1ONxPv6onaga7A&pid=ImgRaw&r=0'
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            // textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            article.title,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            article.subTitle ?? 'no discribtion exist',
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8,)
        ],
      ),
    );
  }
}
