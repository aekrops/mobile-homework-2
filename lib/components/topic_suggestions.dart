import 'package:flutter/material.dart';
import 'package:lab2/data.dart';

import '../constants.dart';
import '../utils.dart';

class TopicSuggestions extends StatelessWidget {
  const TopicSuggestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: _categoryList(context),
    );
  }

  Widget _categoryList(BuildContext context) {
    return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categories
                  .map((category) => _categoryTopic(context, category.title))
                  .toList(),
            ),
        );
  }

  Widget _categoryTopic(BuildContext context, String title) {
    return Container(
        margin: const EdgeInsets.only(left: 10),
        decoration: const BoxDecoration(
            color: categoryCardColor,
            borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        // alignment: ,
        child: StyledText(title, 14.0)
    );
  }
}
