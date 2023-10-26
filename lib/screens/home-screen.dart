import 'package:flutter/material.dart';
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
          SizedBox(
            height: 56,
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFF83B1FF),
                  image: DecorationImage(
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
                        color: Color(0xFF19202D),
                        fontSize: SizeConfiguration.blockSizeHorizontal! * 4,
                        fontFamily: 'Gellix',
                        fontWeight: FontWeight.w700,
                        height: 0),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Monday, 3 October',
                    style: TextStyle(
                      color: Color(0xFF9397A0),
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
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
