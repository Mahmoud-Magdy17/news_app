
class Article {
  final String title;
  final String? subTitle;
  final String? image;
  final String? content;

  Article({
    required this.content,
    required this.title,
    required this.subTitle,
    required this.image,
  });
  factory Article.fromJson(Map<String,dynamic>json){
    return Article(
          title: json['title'],
          subTitle: json['description'],
          image: json['urlToImage'],
          content: json['content'],
        );
  }
}
