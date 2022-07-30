import '../../widgets/navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/card_categories_widget.dart';
import 'widgets/card_product_widget.dart';
import 'widgets/carousel_widget.dart';
import 'widgets/title_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<String> imageList = [
    'lib/core/assets/images/banner_11.png',
    'lib/core/assets/images/banner_11.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: context.theme.primaryColor,
      ),
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Image.asset('lib/core/assets/images/logo.png'),
          actions: const [
            IconButton(
              icon: Icon(
                color: Colors.white,
                Icons.chat_bubble_outline,
              ),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(
                color: Colors.white,
                Icons.notifications_none,
              ),
              onPressed: null,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleWidget(
                title: 'Categories',
                color: context.theme.primaryColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CardCategoriesWidget(
                    title: 'Apparel',
                    color: Color(0xFFFF7676),
                  ),
                  CardCategoriesWidget(
                    title: 'Beauty',
                    color: Color(0xFF76BAFF),
                  ),
                  CardCategoriesWidget(
                    title: 'Shoes',
                    color: Color(0xFF2FC145),
                  ),
                  CardCategoriesWidget(
                    title: 'See All',
                    color: Colors.white,
                  ),
                ],
              ),
              TitleWidget(
                title: 'Latest',
                color: context.theme.primaryColor,
              ),
              CarouselWidget(imageList: imageList),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CardProductWidget(
                    title: 'Lenovo AL545 Modelo',
                    price: '717,80',
                    image: 'lib/core/assets/images/3000222362_PRD_1500_11.png',
                  ),
                  CardProductWidget(
                    title: 'Lenovo AL545 Modelo',
                    price: '717,80',
                    image: 'lib/core/assets/images/3000222362_PRD_1500_11.png',
                  ),
                  CardProductWidget(
                    title: 'Lenovo AL545 Modelo',
                    price: '717,80',
                    image: 'lib/core/assets/images/3000222362_PRD_1500_11.png',
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: const NavigationBarWidget(),
      ),
    );
  }
}
