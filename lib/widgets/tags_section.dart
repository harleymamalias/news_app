import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/size-configuration.dart';

List<String> tagNames = ['#Health', '#Music', '#Technology', '#Sports'];

class TagsSection extends StatelessWidget {
  const TagsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 14,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tagNames.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 39),
            child: Text(
              tagNames[index],
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: const Color(0xFF9397A0),
                  fontSize: SizeConfiguration.blockSizeHorizontal! * 3,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
