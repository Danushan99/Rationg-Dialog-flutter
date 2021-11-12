import 'package:flutter/material.dart';
import 'package:rationg_dialog/rating_view.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(23.0),
          alignment: Alignment.center,
          child: Column(
            children: [
              const FlutterLogo(
                size: 100.0,
              ),
              Text(
                'Review Our App',
                style: Theme.of(context).textTheme.headline4,
              ),
              const Spacer(),
              TextButton.icon(
                  onPressed: () {
                    openRatiogDialog(context);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue.withOpacity(0.1)),
                  ),
                  icon: const Icon(Icons.star),
                  label: Text(
                    "Rate Us",
                    style: Theme.of(context).textTheme.headline6,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  openRatiogDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return const Dialog(
            child: RatingView(),
          );
        });
  }
}
