import 'package:flutter/material.dart';

class TrackCoreText extends StatelessWidget {
  final bool shouldBeFaint;

  const TrackCoreText({super.key, this.shouldBeFaint = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Trackcore",
      style: TextStyle(
          color: shouldBeFaint ? Colors.blue[200] : Colors.blue,
          fontSize: 40,
          fontWeight: FontWeight.w600),
    );
  }
}
