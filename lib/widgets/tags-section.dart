import 'package:flutter/material.dart';
import 'package:news_app/size-configuration.dart';

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
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 38),
            child: Text(
              '#Health',
              style: TextStyle(
                  color: const Color(0xFF9397A0),
                  fontSize: SizeConfiguration.blockSizeHorizontal! * 3,
                  fontFamily: 'Gellix',
                  fontWeight: FontWeight.w500,
                  height: 0),
            ),
          );
        },
      ),
    );
  }
}
