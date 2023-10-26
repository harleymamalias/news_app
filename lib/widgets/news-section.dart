import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
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
                      color: const Color(0xff19202d).withOpacity(0.050),
                      offset: const Offset(0, 3),
                      blurRadius: 24,
                      spreadRadius: 0),
                ]),
            child: Column(
              children: [
                Container(
                  height: 164,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/hawai-beach.jpg'))),
                ),
                const SizedBox(
                  height: 18,
                ),
                Flexible(
                  child: Text(
                    'Feel the thrill on the only surf simulator in Maldives 2022123123 ',
                    style: TextStyle(
                      color: const Color(0xFF19202D),
                      fontSize: SizeConfiguration.blockSizeHorizontal! * 3.5,
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 19,
                          backgroundColor: Colors.lightBlueAccent,
                          backgroundImage:
                              AssetImage('assets/Tywin-Lannister.jpg'),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Tywin Lannister',
                              style: TextStyle(
                                color: const Color(0xFF19202D),
                                fontSize:
                                    SizeConfiguration.blockSizeHorizontal! * 3,
                                fontFamily: 'Gellix',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'September 9, 2022',
                              style: TextStyle(
                                color: const Color(0xFF9397A0),
                                fontSize:
                                    SizeConfiguration.blockSizeHorizontal! * 3,
                                fontFamily: 'Gellix',
                                fontWeight: FontWeight.w600,
                                height: 0,
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
              ],
            ),
          );
        },
      ),
    );
  }
}
