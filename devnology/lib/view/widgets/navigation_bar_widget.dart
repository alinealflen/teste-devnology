import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cart_counter_widget.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: context.theme.primaryColor,
      ),
      child: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          color: context.theme.colorScheme.secondary,
        ),
        onTap: (index) {
          if (index == 0) Get.toNamed('/');
          if (index == 2) Get.toNamed('/cart');
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Get.currentRoute == '/'
                  ? context.theme.colorScheme.secondary
                  : Colors.white,
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.search_rounded,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: CartCounterWidget(
              iconColor: Get.currentRoute == '/cart'
                  ? context.theme.colorScheme.secondary
                  : Colors.white,
            ),
            label: 'Cart',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
