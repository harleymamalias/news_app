import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/models/news_details_data.dart';
import 'package:news_app/size-configuration.dart';
import 'package:news_app/widgets/full_screen_slider.dart';

class NewsDetailsScreen extends StatefulWidget {
  final NewsDetailsData newsDetailsData;
  final int index; 
  const NewsDetailsScreen({
    required this.newsDetailsData,
    required this.index,
    super.key,
  });

  @override
  State<NewsDetailsScreen> createState() => _NewsDetailsScreenState();
}

class _NewsDetailsScreenState extends State<NewsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfiguration().init(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfiguration.blockSizeVertical! * 50,
                child: Stack(
                  children: [
                    FullScreenSlider(carouselItems: widget.newsDetailsData.carouselItems),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(42),
                            topRight: Radius.circular(42),
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              padding: const EdgeInsets.all(12),
                              child: SvgPicture.asset('assets/arrow_back_icon.svg'),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              padding: const EdgeInsets.all(12),
                              child: SvgPicture.asset('assets/bookmark_white_icon.svg'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(widget.newsDetailsData.newsTitle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
