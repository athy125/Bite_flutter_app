import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:news_app/model/news.dart';
import 'package:timeago/timeago.dart' as timego;
import 'package:news_app/paltte.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({Key? key, required this.article}) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            collapsedHeight: size.height * 0.5,
            backgroundColor: Colors.transparent,
            flexibleSpace: Stack(
              children: [
                ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                  ).createShader(bounds),
                  blendMode: BlendMode.darken,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      image: DecorationImage(
                        image: NetworkImage(article.featuredImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(
                    0,
                    200,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 3.0,
                              sigmaY: 3.0,
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Text(
                                article.category,
                                style: kLabelText,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          article.title,
                          style: kBoldHeading.copyWith(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          article.discription,
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade900,
                                  borderRadius: BorderRadius.circular(26),
                                ),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      maxRadius: 16,
                                      backgroundImage: NetworkImage(
                                        article.authorPhoto,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      article.author,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(
                              24,
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.watch_later_outlined,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                timego.format(
                                  article.time,
                                  locale: 'en_short',
                                ),
                                style: kLabelblack,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(
                              24,
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.watch_later_outlined,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                article.views.toString(),
                                style: kLabelblack,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      article.content,
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
