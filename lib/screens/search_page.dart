import 'package:flutter/material.dart';
import 'package:news_app/model/news.dart';
import 'package:news_app/paltte.dart';
import '../widgets/widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) => [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black87,
                    size: 30.0,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Discover(),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: SearchBox(),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Stack(
                      fit: StackFit.passthrough,
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(color: Colors.black26, width: 2.0),
                            ),
                          ),
                        ),
                        TabBar(
                          isScrollable: true,
                          indicatorColor: Colors.black,
                          unselectedLabelColor: Colors.black26,
                          labelColor: Colors.black,
                          labelStyle: kBoldHeading,
                          tabs: [
                            Tab(
                              icon: Text(
                                'Health',
                              ),
                            ),
                            Tab(
                              icon: Text(
                                'Politics',
                              ),
                            ),
                            Tab(
                              icon: Text(
                                'Art',
                              ),
                            ),
                            Tab(
                              icon: Text(
                                'Science',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
          body: TabBarView(
            children: [
              ArticleListBuilder(
                articles: healthArticles,
              ),
              ArticleListBuilder(articles: politicsArticles),
              ArticleListBuilder(articles: artArticles),
              ArticleListBuilder(articles: scienceArticles),
            ],
          ),
        ),
      ),
    );
  }
}
