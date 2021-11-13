import 'dart:math';

import 'package:flutter/material.dart';

class RatingView extends StatefulWidget {
  const RatingView({Key? key}) : super(key: key);

  @override
  _RatingViewState createState() => _RatingViewState();
}

class _RatingViewState extends State<RatingView> {
  final _ratingPageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: max(300, MediaQuery.of(context).size.height * 0.3),
            child: PageView(
              controller: _ratingPageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildThanksNote(),
                _causeOfRationg(),
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildThanksNote() {
    return Column(
      children: const [
        Text(
          "Thanks For Choosing Us",
          style: TextStyle(
            fontSize: 24,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text('We\'d love to get your feedback'),
        Text('How was your ride today'),
      ],
    );
  }

  _causeOfRationg() {
    return Container();
  }
}
