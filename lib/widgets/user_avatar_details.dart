import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/size-configuration.dart';

class UserAvatarDetails extends StatelessWidget {
  const UserAvatarDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Welcome Back!',
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              color: const Color(0xFF19202D),
              fontSize: SizeConfiguration.blockSizeHorizontal! * 5,
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          'Friday, 27 October',
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              color: const Color(0xFF9397A0),
              fontSize: SizeConfiguration.blockSizeHorizontal! * 3.5,
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
      ],
    );
  }
}
