import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/author_data.dart';
import 'package:news_app/models/news_details_data.dart';
import 'package:news_app/screens/author_details_screen.dart';
import 'package:news_app/screens/news_details_screen.dart';
import 'package:news_app/size-configuration.dart';

class NewsSection extends StatelessWidget {
  const NewsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 304,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: newsDataList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          NewsDetailsData newsItem = newsDataList[index];
          NewsAuthorDetails authorDetails = authorData[index];

          return Container(
            margin: const EdgeInsets.only(right: 20),
            padding: const EdgeInsets.all(12),
            height: 304,
            width: 255,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff19202d).withOpacity(0.030),
                  offset: const Offset(0, 3),
                  blurRadius: 24,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => NewsDetailsScreen(
                            newsDetailsData: newsDataList[index], index: index),
                      ),
                    );
                  },
                  child: Container(
                    height: 164,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(newsItem.mainCoverPhoto),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Flexible(
                  child: Text(
                    newsItem.headlineTitle,
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: const Color(0xFF19202D),
                        fontSize: SizeConfiguration.blockSizeHorizontal! * 3.8,
                        fontWeight: FontWeight.w800,
                        height: 0,
                      ),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AuthorDetailsScreen(
                          authorDetails: authorData[index],
                          index: index,
                        ),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 19,
                            backgroundColor: Colors.lightBlueAccent,
                            backgroundImage: AssetImage(newsItem.authorProfile),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${newsItem.authorFirstName} ${newsItem.authorLastName}',
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    color: const Color(0xFF19202D),
                                    fontSize:
                                        SizeConfiguration.blockSizeHorizontal! *
                                            3.3,
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                newsItem.datePublished,
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    color: const Color(0xFF9397A0),
                                    fontSize:
                                        SizeConfiguration.blockSizeHorizontal! *
                                            3.3,
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 38,
                        width: 38,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xFFEFF5F4),
                        ),
                        child: SvgPicture.asset(
                          'assets/share_icon.svg',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
