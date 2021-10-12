import 'package:flutter/material.dart';
import 'package:lab2/data.dart';
import 'package:lab2/utils.dart';
import '../constants.dart';

class ArticleSuggestions extends StatelessWidget {
  const ArticleSuggestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: _articleList(context),
    );
  }

  Widget _articleList(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: articles
            .map((article) => _articleCard(
                context,
                article.community,
                article.title,
                article.pubDate,
                article.icon,
                article.readingTime))
            .toList(),
      ),
    );
  }

  Widget _articleCard(BuildContext context, Community community, String title,
      String pubDate, String icon, String readingTime) {
    return Container(
        margin: const EdgeInsets.only(left: 10),
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(children: [
              _articleCommunity(context, community),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: StyledText(title, 18.0),
              ),
              Row(
                children: [
                  StyledText(pubDate, 15.0),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  StyledText(readingTime, 15.0),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                  const Icon(Icons.bookmark_add_outlined,
                      color: archiveBtnColor)
                ],
              ),
            ]),
            Image.asset(
              icon,
              height: 100,
              width: 100,
            ),
          ],
        ));
  }

  Widget _articleCommunity(BuildContext context, Community community) {
    return Row(
      children: [
        Image.asset(
          community.icon,
          height: 15,
        ),
        const SizedBox(width: 10),
        StyledText(community.name, 14.0)
      ],
    );
  }
}
