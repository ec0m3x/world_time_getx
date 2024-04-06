import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:world_time_getx/controllers/navbar_controller.dart';
import 'package:world_time_getx/view/pages/dashboard.dart';
import 'package:world_time_getx/view/pages/profile.dart';
import 'package:world_time_getx/view/pages/settings.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final controller = Get.put(NavBarController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (context){
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [
            Dashboard(),
            Profile(),
            Settings(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          currentIndex: controller.tabIndex,
          onTap: controller.changeTabIndex,
          items: [
            _bottombarItem(IconlyBold.home, 'Dashboard'),
            _bottombarItem(IconlyBold.profile, 'Profile'),
            _bottombarItem(IconlyBold.setting, 'Settings'),
          ],
        ),
      );
    });
  }
}


// ignore: unused_element
_bottombarItem(IconData icon, String label) {
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}