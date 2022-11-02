import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:zenan_2/pages/main/home/homepage.dart';
import 'package:zenan_2/pages/main/profile/profile_screen.dart';
import 'package:zenan_2/pages/main/search/searchpage.dart';

class NavbarNew extends StatefulWidget {
  @override
  State<NavbarNew> createState() => _NavbarNewState();
}

class _NavbarNewState extends State<NavbarNew> {
  bool hideNavbar = false;
  callback(newValue) {
    setState(() {
      this.hideNavbar = newValue;
    });
  }

  @override
  PersistentTabController? _controller;

  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      backgroundColor: Theme.of(context).backgroundColor,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(context),
      confineInSafeArea: true,
      //padding: NavBarPadding.all(20),
      hideNavigationBar: hideNavbar,
      //backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Theme.of(context).backgroundColor,
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
      navBarStyle: NavBarStyle.style8,

      // Choose the nav bar style with this property.
    );
  }

  List<Widget> _buildScreens() {
    return [
      // HomePage(
      //   callback: callback,
      //   navValue: hideNavbar,
      // ),
      HomePage(),
      SearchPage(),
      HomePage(),
      ProfileScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems(context) {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        inactiveIcon: Icon(CupertinoIcons.home),
        //title: ("Liked".tr),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.search),

        //title: ("Liked".tr),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.heart_fill),
        inactiveIcon: Icon(CupertinoIcons.heart),
        //title: ("Liked".tr),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.profile_circled),

        //title: ("Liked".tr),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
