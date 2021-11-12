import 'dart:math';

import 'package:flutter/material.dart';

class RatingView extends StatefulWidget {
  const RatingView({Key? key}) : super(key: key);

  @override
  _RatingViewState createState() => _RatingViewState();
}

class _RatingViewState extends State<RatingView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: max(300, MediaQuery.of(context).size.height * 0.3),
            child: PageView(),
          )
        ],
      ),
    );
  }
}
