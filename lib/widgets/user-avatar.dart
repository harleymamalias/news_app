import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}