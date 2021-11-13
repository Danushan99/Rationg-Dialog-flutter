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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      clipBehavior: Clip.antiAlias,
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
          ),
          //thanks note
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.red,
              child: MaterialButton(
                onPressed: () {},
                child: Text('Done'),
                textColor: Colors.white,
              ),
            ),
          ),
          //skip button
          Positioned(
            right: 0,
            left: 240,
            child: MaterialButton(
              onPressed: () {},
              child: Text("Skip"),
            ),
          ),
          //star animation
          AnimatedPositioned(
              left: 0,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    5,
                    (index) => IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star,
                          size: 30,
                          color: Colors.red,
                        ))),
              ),
              duration: const Duration(milliseconds: 300))
        ],
      ),
    );
  }

  _buildThanksNote() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
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
