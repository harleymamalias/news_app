import 'package:flutter/material.dart';
import 'package:news_app/size-configuration.dart';
import 'package:news_app/widgets/news-section.dart';
import 'package:news_app/widgets/search-box.dart';
import 'package:news_app/widgets/short-news-section.dart';
import 'package:news_app/widgets/tags-section.dart';
import 'package:news_app/widgets/user-avatar-details.dart';
import 'package:news_app/widgets/user-avatar.dart';

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
          const Row(
            children: [
              UserAvatar(),
              SizedBox(
                width: 16,
              ),
              UserAvatarDetails()
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const SearchBox(),
          const SizedBox(
            height: 15,
          ),
          const TagsSection(),
          const SizedBox(
            height: 30,
          ),
          const NewsSection(),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Short For You',
                style: TextStyle(
                    color: const Color(0xFF19202D),
                    fontSize: SizeConfiguration.blockSizeHorizontal! * 4.5,
                    fontFamily: 'Gellix',
                    fontWeight: FontWeight.w700,
                    height: 0),
              ),
              Text(
                'View All',
                style: TextStyle(
                    color: const Color(0xFF5474FD),
                    fontSize: SizeConfiguration.blockSizeHorizontal! * 3,
                    fontFamily: 'Gellix',
                    fontWeight: FontWeight.w500,
                    height: 0),
              ),
            ],
          ),
          const SizedBox(
            height: 19,
          ),
          const ShortNewsSection(),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
