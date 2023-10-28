import 'package:flutter/material.dart';
import 'package:news_app/models/author_data.dart';

class AuthorDetailsScreen extends StatefulWidget {
  final NewsAuthorDetails authorDetails;
  final int index;
  const AuthorDetailsScreen({super.key, required this.authorDetails, required this.index});

  @override
  State<AuthorDetailsScreen> createState() => _AuthorDetailsScreenState();
}

class _AuthorDetailsScreenState extends State<AuthorDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(children: [Text(widget.authorDetails.authorFirstName)]),
      ),
    );
  }
}