import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/size-configuration.dart';

class FullScreenSlider extends StatefulWidget {
  final List<String> carouselItems;

  const FullScreenSlider({super.key, required this.carouselItems});

  @override
  State<FullScreenSlider> createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  int currentIndex = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    List<String> carouselItems = widget.carouselItems;
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: SizeConfiguration.blockSizeVertical! * 50,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(
                () {
                  currentIndex = index;
                },
              );
            },
            initialPage: currentIndex,
          ),
          items: carouselItems.map(
            (item) {
              return Center(
                child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                  height: SizeConfiguration.blockSizeVertical! * 50,
                  width: double.infinity,
                ),
              );
            },
          ).toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 52),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: carouselItems
                  .asMap()
                  .entries
                  .map(
                    (entry) => GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: SvgPicture.asset(currentIndex == entry.key
                            ? 'assets/carousel_indicator_enabled.svg'
                            : 'assets/carousel_indicator_disabled.svg'),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        )
      ],
    );
  }
}
