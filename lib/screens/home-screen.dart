import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/size-configuration.dart';

class NewsAppHomeScreen extends StatefulWidget {
  const NewsAppHomeScreen({super.key});

  @override
  State<NewsAppHomeScreen> createState() => _NewsAppHomeScreenState();
}

class _NewsAppHomeScreenState extends State<NewsAppHomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfiguration().init(context);
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        children: [
          const SizedBox(
            height: 56,
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xFF83B1FF),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/Harley.jpg',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                        color: const Color(0xFF19202D),
                        fontSize: SizeConfiguration.blockSizeHorizontal! * 4,
                        fontFamily: 'Gellix',
                        fontWeight: FontWeight.w700,
                        height: 0),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Monday, 3 October',
                    style: TextStyle(
                      color: const Color(0xFF9397A0),
                      fontSize: SizeConfiguration.blockSizeHorizontal! * 3,
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
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
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  style: TextStyle(
                    color: const Color(0xFFA7A7A7),
                    fontFamily: 'Gellix',
                    fontSize: SizeConfiguration.blockSizeHorizontal! * 3,
                    fontWeight: FontWeight.w400,
                  ),
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 13),
                      hintText: 'Search for article...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      hintStyle: TextStyle(
                        color: const Color(0xffa7a7a7),
                        fontSize: SizeConfiguration.blockSizeHorizontal! * 3,
                      )),
                )),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF5474FD),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/search_icon.svg')),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
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
                        color: Color(0xFF9397A0),
                        fontSize: SizeConfiguration.blockSizeHorizontal! * 3,
                        fontFamily: 'Gellix',
                        fontWeight: FontWeight.w500,
                        height: 0),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
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
                            fontSize:
                                SizeConfiguration.blockSizeHorizontal! * 3.5,
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
                                      fontSize: SizeConfiguration
                                              .blockSizeHorizontal! *
                                          3,
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
                                      fontSize: SizeConfiguration
                                              .blockSizeHorizontal! *
                                          3,
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
                              color: Color(0xFFEFF5F4),
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
          )
        ],
      ),
    );
  }
}
