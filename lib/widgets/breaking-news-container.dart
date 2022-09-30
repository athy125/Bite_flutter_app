import 'package:news_app/screens/_screen.dart';
import '../model/news.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../paltte.dart';

class BreakingNewsContainer extends StatelessWidget {
  const BreakingNewsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Breaking News',
                  style: kBoldHeading,
                ),
                Spacer(),
                Text('More',
                    style: kBoldHeading.copyWith(
                      fontSize: 18,
                    )),
                SizedBox(
                  width: 12,
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.8,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final articles = articleList[index];
                  return Container(
                    child: InkWell(
                      customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ArticlePage(
                            article: articles,
                          ),
                        ),
                      ),
                      child: Container(
                        width: 290,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 16,
                            bottom: 16,
                            right: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 160,
                                width: 260,
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      articles.title,
                                      style: kBoldHeading.copyWith(
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      timeago.format(
                                        articles.time,
                                      ),
                                      style: kTextLightGrey,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'by ' + articles.author,
                                      style: kTextLightGrey,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
