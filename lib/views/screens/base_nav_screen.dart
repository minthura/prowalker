import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:prowalker/constants.dart';
import 'package:prowalker/views/screens/my_cart_screen.dart';

import 'home_screen.dart';

class BaseNavScreen extends StatelessWidget {
  const BaseNavScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: kPrimaryColor,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property.
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      HomeScreen(),
      MyCartScreen(),
      HomeScreen(),
      HomeScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.house_fill),
        activeColorPrimary: kAccentColor,
        inactiveColorPrimary: kNavItemInactiveColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.heart_fill),
        activeColorPrimary: kAccentColor,
        inactiveColorPrimary: kNavItemInactiveColor,
      ),
      PersistentBottomNavBarItem(
        icon: Badge(
          badgeContent: Text(
            '2',
            style: TextStyle(color: Colors.white),
          ),
          position: BadgePosition.topEnd(top: -10, end: -15),
          child: Icon(
            CupertinoIcons.cart_fill,
            color: Colors.white,
          ),
        ),
        activeColorPrimary: kAccentColor,
        inactiveColorPrimary: kNavItemInactiveColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.square_list_fill),
        activeColorPrimary: kAccentColor,
        inactiveColorPrimary: kNavItemInactiveColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person),
        activeColorPrimary: kAccentColor,
        inactiveColorPrimary: kNavItemInactiveColor,
      ),
    ];
  }
}
