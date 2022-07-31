import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselProductWidget extends StatefulWidget {
  final List<String> imageList;
  const CarouselProductWidget({
    required this.imageList,
    Key? key,
  }) : super(key: key);

  @override
  State<CarouselProductWidget> createState() => _CarouselProductWidgetState();
}

class _CarouselProductWidgetState extends State<CarouselProductWidget> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
        items: widget.imageList
            .map((e) => ClipRRect(
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(e),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
            .toList(),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: widget.imageList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 12.0,
              height: 12.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                      .withOpacity(_current == entry.key ? 0.9 : 0.4)),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
