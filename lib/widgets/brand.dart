import 'package:flutter/material.dart';

class Brand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Wallpaper',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        Text(
          'HD',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
