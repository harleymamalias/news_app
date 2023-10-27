import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfiguration.blockSizeVertical! * 50,
              child: Stack(
                children: [
                  FullScreenSlider(
                      carouselItems: widget.newsDetailsData.carouselItems),
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
                        vertical: 45,
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
                            child:
                                SvgPicture.asset('assets/arrow_back_icon.svg'),
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
                            child: SvgPicture.asset(
                                'assets/bookmark_white_icon.svg'),
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
              child: Text(
                widget.newsDetailsData.newsTitle,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: const Color(0xFF19202D),
                    fontSize: SizeConfiguration.blockSizeHorizontal! * 7.5,
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              height: 54,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: const Color(0xFFEEEEEE),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage(widget.newsDetailsData.authorProfile),
                  ),
                  SizedBox(
                    width: SizeConfiguration.blockSizeHorizontal! * 2.5,
                  ),
                  Text(
                    '${widget.newsDetailsData.authorFirstName} ${widget.newsDetailsData.authorLastName}  ${widget.newsDetailsData.datePublished}  •  ${widget.newsDetailsData.minutesPosted}',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: const Color(0xFF9397A0),
                        fontSize: SizeConfiguration.blockSizeHorizontal! * 3,
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Text(
                widget.newsDetailsData.description,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Color(0xFF19202D),
                    fontSize: SizeConfiguration.blockSizeHorizontal! * 4,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfiguration.blockSizeHorizontal! * 5,
            ),
          ],
        ),
      ),
    );
  }
}
