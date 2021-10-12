import "package:flutter/material.dart";

import '../constants.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: navigationBarColor,
      child: SizedBox(
        height: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? MediaQuery.of(context).size.height * 0.07
            : MediaQuery.of(context).size.height * 0.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.home_rounded, color: navigationActiveColor),
              Icon(Icons.search, color: navigationNonactiveColor),
              Icon(Icons.turned_in_not_rounded, color: navigationNonactiveColor),
              Icon(Icons.perm_identity_rounded, color: navigationNonactiveColor)
              // Icon()
            ]
          )
      )
    );
  }
}
