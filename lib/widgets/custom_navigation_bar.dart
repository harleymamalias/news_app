import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: selectedIndex == 0
              ? SvgPicture.asset('assets/home_selected_icon.svg')
              : SvgPicture.asset('assets/home_unselected_icon.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 1
              ? SvgPicture.asset('assets/bookmark_selected_icon.svg')
              : SvgPicture.asset('assets/bookmark_unselected_icon.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 2
              ? SvgPicture.asset('assets/notification_selected_icon.svg')
              : SvgPicture.asset('assets/notification_unselected_icon.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 3
              ? SvgPicture.asset('assets/profile_selected_icon.svg')
              : SvgPicture.asset('assets/profile_unselected_icon.svg'),
          label: '',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onItemTapped,
    );
  }
}
