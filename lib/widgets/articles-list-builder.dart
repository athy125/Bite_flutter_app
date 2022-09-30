import 'package:flutter/material.dart';
import 'package:news_app/screens/_screen.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:news_app/paltte.dart';

class ArticleListBuilder extends StatelessWidget {
  const ArticleListBuilder({
    required this.articles,
  });

  final List articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ArticlePage(article: article),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 16),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: NetworkImage(article.featuredImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            article.title,
                            style: kBoldHeading.copyWith(fontSize: 18),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time_rounded,
                                    size: 15,
                                    color: kLightGrey,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    timeago.format(article.time),
                                    style: kTextLightGrey,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.remove_red_eye_outlined,
                                    size: 15,
                                    color: kLightGrey,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    article.views.toString(),
                                    style: kTextLightGrey,
                                  ),
                                  Text(
                                    'views',
                                    style: kTextLightGrey,
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
