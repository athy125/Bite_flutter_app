import 'dart:ui';
import 'package:news_app/screens/article-page.dart';

import '../widgets/widget.dart';
import 'package:flutter/material.dart';
import '../model/news.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            collapsedHeight: 280,
            backgroundColor: Colors.transparent,
            flexibleSpace: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          newsOfTheDay.featuredImage,
                        ),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black38,
                          BlendMode.darken,
                        )),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(26),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Transform.translate(
                    offset: Offset(0, 150),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 5,
                              sigmaY: 5,
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.grey.shade200.withOpacity(0.5),
                              ),
                              child: Text(
                                'News of the day',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            newsOfTheDay.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ArticlePage(article: newsOfTheDay),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                'Learn more',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Icon(
                                Icons.arrow_forward_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BreakingNewsContainer(),
          ArticlesForYou()
        ],
      ),
    );
  }
}
