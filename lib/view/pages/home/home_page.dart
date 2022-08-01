import '../../../model/serializers/product_serializer.dart';
import '../../widgets/title_widget.dart';

import '../../widgets/navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/card_categories_widget.dart';
import 'widgets/card_product_widget.dart';
import 'widgets/carousel_widget.dart';

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
                size: 30,
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
                size: 30,
              ),
              CarouselWidget(imageList: imageList),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardProductWidget(
                    product: ProductSerializer().fake(),
                  ),
                  CardProductWidget(
                    product: ProductSerializer().fake(),
                  ),
                  CardProductWidget(
                    product: ProductSerializer().fake(),
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
