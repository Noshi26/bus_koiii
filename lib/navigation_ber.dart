import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';
import 'location.dart';
import 'search_bus.dart';
import 'settings_page.dart';


class NavigationMenu extends StatelessWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
         items: const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.home, color: Colors.green),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.search, color: Colors.green),
    label: 'Search',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.track_changes, color: Colors.green),
    label: 'Track',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.settings, color: Colors.green),
    label: 'Settings',
  ),
],

          currentIndex: controller.selectedIndex.value,
          selectedItemColor: Colors.green,
          onTap: (index) => controller.selectedIndex.value = index,
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final List<Widget> screens = [
    Container( child: HomePage()),
    Container(child: AvailableRoutesScreen()),
    Container(child: MapScreen()),
    Container(child: MenuScreen()),
  ];
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NavigationMenu(),
    );
  }
}
