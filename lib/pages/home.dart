import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lab2/components/article_suggestions.dart';
import 'package:lab2/components/community_suggestions.dart';
import 'package:lab2/components/header.dart';
import 'package:lab2/components/navigation_bar.dart';
import 'package:lab2/components/topic_suggestions.dart';
import '../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: const [
                  Header(),
                  TopicSuggestions(),
                  CommunitySuggestions(),
                  ArticleSuggestions(),
                ],
              ),
            ),
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
