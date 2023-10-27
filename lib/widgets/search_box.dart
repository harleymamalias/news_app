import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/size-configuration.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}