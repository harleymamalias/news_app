import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/shorts_news_details_data.dart';
import 'package:news_app/size-configuration.dart';

class ShortNewsSection extends StatelessWidget {
  const ShortNewsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: ListView.builder(
        itemCount: shortsDataList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          ShortNewsDetails item = shortsDataList[index];
          return Container(
            padding: const EdgeInsets.all(9),
            margin: const EdgeInsets.only(right: 20),
            width: 208,
            height: 88,
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
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  padding: const EdgeInsets.all(26),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(item.coverPhoto),
                    ),
                  ),
                  child: SvgPicture.asset('assets/play_icon.svg'),
                ),
                const SizedBox(
                  width: 12,
                ),
                Flexible(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: const Color(0xFF19202D),
                          fontSize:
                              SizeConfiguration.blockSizeHorizontal! * 3.5,
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('assets/eye_icon.svg'),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          item.numberOfViews,
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: const Color(0xFF9397A0),
                              fontWeight: FontWeight.w500,
                              height: 0,
                              fontSize:
                                  SizeConfiguration.blockSizeHorizontal! * 3.5,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ))
              ],
            ),
          );
        },
      ),
    );
  }
}
