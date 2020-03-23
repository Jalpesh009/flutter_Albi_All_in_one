import 'package:flutter/material.dart';

void main() {
  runApp(FadeInImageDemo());
}

class FadeInImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Fade in images';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: FadeInImage.assetNetwork(
            placeholder: 'assets/images/loader.gif',
            image:
                'https://stat1.bollywoodhungama.in/wp-content/uploads/2017/09/War-12.jpg',
          ),
        ),
      ),
    );
  }
}
