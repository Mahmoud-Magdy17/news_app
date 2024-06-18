import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsService {
  final Dio dio;

  final String category;
  NewsService({required this.category, required this.dio});
  Future<List<Article>> getTopHeadlinesNews() async {
    try{
Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=3d80ba6fd97d4a9a9b0e34c410b22891");

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articlesJson = jsonData['articles'];
    List<Article> articles = [];
    for (var article in articlesJson) {
      articles.add(
        Article(
          title: article['title'],
          subTitle: article['description'],
          image: article['urlToImage'],
          content: article['content'],
        ),
      );
    }
    return articles;
    }catch(e){
      return [];
    }
  
  }   

}
