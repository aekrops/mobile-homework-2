import 'package:flutter/material.dart';
import 'package:lab2/data.dart';

import '../constants.dart';
import '../utils.dart';

class CommunitySuggestions extends StatelessWidget {
  const CommunitySuggestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: _communityList(context),
    );
  }

  Widget _communityList(BuildContext context) {
    return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: communities
                  .map((community) => _communityCard(context, community.name, community.icon))
                  .toList(),
            ),
    );
  }

  Widget _communityCard(BuildContext context, String name, String icon) {
    return Container(
        margin: const EdgeInsets.only(left: 10),
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(

          children: [
            Image.asset(
                icon,
                height: 60,
            ),
            const SizedBox(height: 3),
            StyledText(name, 14.0),
          ],
        )
    );
  }
}
