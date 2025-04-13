import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class BoomNavBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) onTap;

  const BoomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const iconList = [
      Icons.home,
      Icons.shop_2_sharp,
      Icons.bed,
      Icons.person,
    ];

    return AnimatedBottomNavigationBar(
      icons: iconList,
      activeIndex: currentIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      onTap: onTap,
    );
  }
}
