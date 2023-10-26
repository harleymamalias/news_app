import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(9),
            margin: const EdgeInsets.only(right: 20),
            width: 208,
            height: 88,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xff19202d).withOpacity(0.050),
                      offset: const Offset(0, 3),
                      blurRadius: 24,
                      spreadRadius: 0),
                ]),
            child: Row(
              children: [
                Container(
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/island.jpg'))),
                ),
                const SizedBox(
                  width: 12,
                ),
                Flexible(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Top Trending Islands in 2023',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: const Color(0xFF19202D),
                        fontSize: SizeConfiguration.blockSizeHorizontal! * 3.5,
                        fontFamily: 'Gellix',
                        fontWeight: FontWeight.w600,
                        height: 0,
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
                          '40,999',
                          style: TextStyle(
                            color: const Color(0xFF9397A0),
                            fontFamily: 'Gellix',
                            fontWeight: FontWeight.w500,
                            height: 0,
                            fontSize:
                                SizeConfiguration.blockSizeHorizontal! * 3,
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
