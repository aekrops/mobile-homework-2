import 'package:flutter/material.dart';

import '../constants.dart';
import '../utils.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            StyledText("Home", 24.0),
            Icon(Icons.notifications_none, size: 33, color: notificationsColor)
          ],
        ));
  }
}
