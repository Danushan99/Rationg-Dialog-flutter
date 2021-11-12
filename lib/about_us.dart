import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            const FlutterLogo(
              size: 100.0,
            ),
            Text(
              'Review Page',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blue.withOpacity(0.1)),
                ),
                icon: Icon(Icons.star),
                label: Text(
                  "Rate Us",
                  style: Theme.of(context).textTheme.headline,
                ))
          ],
        ),
      )),
    );
  }
}
