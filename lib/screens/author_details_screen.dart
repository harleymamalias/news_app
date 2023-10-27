import 'package:flutter/material.dart';

class AuthorDetailsScreen extends StatefulWidget {
  const AuthorDetailsScreen({super.key});

  @override
  State<AuthorDetailsScreen> createState() => _AuthorDetailsScreenState();
}

class _AuthorDetailsScreenState extends State<AuthorDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(children: [Text('Author Details Screen')]),
      ),
    );
  }
}
