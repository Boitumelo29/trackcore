import 'package:flutter/material.dart';

class TrackCoreSubText extends StatelessWidget {
  const TrackCoreSubText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Tracking at its best.",
      style: TextStyle(
          color: Colors.grey[800], fontSize: 20, fontWeight: FontWeight.w300),
    );
  }
}
