import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  final List<String> imageList;
  const CarouselWidget({
    required this.imageList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enlargeCenterPage: false,
        height: 180.44,
        enableInfiniteScroll: false,
        autoPlay: true,
      ),
      items: imageList
          .map((e) => ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      width: 325,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(e),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      margin: const EdgeInsets.only(right: 10),
                    ),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
