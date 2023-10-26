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
                      contentPadding: const EdgeInsets.symmetric(horizontal: 13),
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
                        color: Color(0xffa7a7a7),
                        fontSize: SizeConfiguration.blockSizeHorizontal! * 3,
                      )),
                )),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF5474FD),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/search_icon.svg')),
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
          
        ],
      ),
    );
  }
}
