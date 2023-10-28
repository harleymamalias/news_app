import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/author_data.dart';
import 'package:news_app/models/news_details_data.dart';
import 'package:news_app/size-configuration.dart';

class AuthorDetailsScreen extends StatefulWidget {
  final NewsAuthorDetails authorDetails;
  final int index;
  const AuthorDetailsScreen(
      {super.key, required this.authorDetails, required this.index});

  @override
  State<AuthorDetailsScreen> createState() => _AuthorDetailsScreenState();
}

class _AuthorDetailsScreenState extends State<AuthorDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfiguration().init;
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                          context); 
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Image.asset('assets/arrow-back-black-icon.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: SizeConfiguration.blockSizeVertical! * 2.5,),
              Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        widget.authorDetails.authorProfile,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfiguration.blockSizeHorizontal! * 2,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${widget.authorDetails.authorFirstName} ${widget.authorDetails.authorLastName}',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: const Color(0xFF19202D),
                                  fontSize:
                                      SizeConfiguration.blockSizeHorizontal! *
                                          4,
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height:
                                  SizeConfiguration.blockSizeHorizontal! * 2.5,
                            ),
                            Text(
                              widget.authorDetails.authorRole,
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: const Color(0xFF19202D),
                                  fontSize:
                                      SizeConfiguration.blockSizeHorizontal! *
                                          3.5,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Container(
                            constraints: BoxConstraints(
                              maxHeight: 42,
                              maxWidth:
                                  SizeConfiguration.blockSizeHorizontal! * 30,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: const Color(0xFF5474FD),
                            ),
                            child: Center(
                              child: Text(
                                'Following',
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        SizeConfiguration.blockSizeHorizontal! *
                                            4,
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.authorDetails.authorBio,
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: const Color(0xFF9397A0),
                          fontSize:
                              SizeConfiguration.blockSizeHorizontal! * 3.5,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      maxLines: 5,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 33,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfiguration.blockSizeHorizontal! * 3,
                  vertical: SizeConfiguration.blockSizeHorizontal! * 3.5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xFF19202D),
                ),
                width: 315,
                height: 95,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      widget.authorDetails.authorFollowers,
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: SizeConfiguration
                                                  .blockSizeHorizontal! *
                                              4,
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Followers',
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: SizeConfiguration
                                                  .blockSizeHorizontal! *
                                              3,
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 0.5,
                                height:
                                    SizeConfiguration.blockSizeHorizontal! * 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: const Color(0xFFC1D4F9),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      widget.authorDetails.authorPosts,
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: SizeConfiguration
                                                  .blockSizeHorizontal! *
                                              4,
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Posts',
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: SizeConfiguration
                                                  .blockSizeHorizontal! *
                                              3,
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 0.5,
                                height:
                                    SizeConfiguration.blockSizeHorizontal! * 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: const Color(0xFFC1D4F9),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      '${widget.authorDetails.authorLikes}',
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: SizeConfiguration
                                                  .blockSizeHorizontal! *
                                              4,
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Likes',
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: SizeConfiguration
                                                  .blockSizeHorizontal! *
                                              3,
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${widget.authorDetails.authorFirstName}\'s Post',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: const Color(0xFF19202D),
                        fontSize: SizeConfiguration.blockSizeHorizontal! * 5,
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  Text(
                    'View all',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: const Color(0xFF5474FD),
                        fontSize: SizeConfiguration.blockSizeHorizontal! * 4,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 19,
              ),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    NewsAuthorDetails authorDetails = authorData[index];
                    NewsDetailsData newsDetails = newsDataList[index];
                    return Container(
                      height: 100,
                      margin: EdgeInsets.only(
                        bottom: SizeConfiguration.blockSizeHorizontal! * 2.5,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 24,
                                  spreadRadius: 0,
                                  offset: const Offset(0, 3),
                                  color: const Color(0xff19202d)
                                      .withOpacity(0.030),
                                )
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                authorDetails.popularPosts[1],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 19,
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  authorDetails.postCategory,
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      color: const Color(0xFF9397A0),
                                      fontSize: SizeConfiguration
                                              .blockSizeHorizontal! *
                                          2.5,
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  newsDetails.headlineTitle,
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      color: const Color(0xFF19202D),
                                      fontSize: SizeConfiguration
                                              .blockSizeHorizontal! *
                                          4,
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/calendar_icon.svg'),
                                        SizedBox(
                                          width: SizeConfiguration
                                                  .blockSizeHorizontal! *
                                              1.5,
                                        ),
                                        Text(
                                          authorDetails.postDate,
                                          style: GoogleFonts.roboto(
                                            textStyle: TextStyle(
                                              color: const Color(0xFF9397A0),
                                              fontSize: SizeConfiguration
                                                      .blockSizeHorizontal! *
                                                  3,
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/time_icon.svg'),
                                        SizedBox(
                                          width: SizeConfiguration
                                                  .blockSizeHorizontal! *
                                              1.5,
                                        ),
                                        Text(
                                          authorDetails.postTime,
                                          style: GoogleFonts.roboto(
                                            textStyle: TextStyle(
                                              color: const Color(0xFF9397A0),
                                              fontSize: SizeConfiguration
                                                      .blockSizeHorizontal! *
                                                  3,
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: SizeConfiguration.blockSizeVertical! * 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Popular From ${widget.authorDetails.authorFirstName}',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: const Color(0xFF19202D),
                        fontSize: SizeConfiguration.blockSizeHorizontal! * 5,
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfiguration.blockSizeVertical! * 2.5,
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: authorData.length,
                  itemBuilder: (context, index) {
                    NewsAuthorDetails authorDetails = authorData[index];
                    NewsDetailsData newsDetails = newsDataList[index];
                    return Container(
                      height: 143,
                      width: 248,
                      margin: EdgeInsets.only(
                        right: SizeConfiguration.blockSizeHorizontal! * 2.5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              authorDetails.popularPosts[0],
                              fit: BoxFit.cover,
                              height: 143,
                              width: 248,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  newsDetails.headlineTitle,
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      color: const Color(0xFF19202D),
                                      fontSize: SizeConfiguration
                                              .blockSizeHorizontal! *
                                          3.5,
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  newsDetails.description,
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      color: const Color(0xFF19202D),
                                      fontSize: SizeConfiguration
                                              .blockSizeHorizontal! *
                                          3,
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
