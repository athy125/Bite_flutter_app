import 'package:flutter/material.dart';
import 'package:news_app/paltte.dart';
import 'package:news_app/screens/article-page.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../model/news.dart';

class ArticlesForYou extends StatelessWidget {
  const ArticlesForYou({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('For You',
                style: kBoldHeading.copyWith(
                  fontSize: 26,
                )),
            Container(
              child: ListView.builder(
                itemCount: articleList.length,
                shrinkWrap: true,
                physics: ScrollPhysics(
                  parent: NeverScrollableScrollPhysics(),
                ),
                itemBuilder: (context, index) {
                  final articles = articleList[index];
                  return InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ArticlePage(article: articles),
                      ),
                    ),
                    child: Container(
                      width: 290,
                      padding: EdgeInsets.only(bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 220,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(
                                image: NetworkImage(
                                  articles.featuredImage,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  articles.title,
                                  style: kBoldHeading.copyWith(
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      timeago.format(articles.time),
                                      style: kTextLightGrey,
                                    ),
                                    Spacer(),
                                    Text(
                                      'by ' + articles.author,
                                      style: kTextLightGrey,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
