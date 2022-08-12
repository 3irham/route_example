import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  const Video({super.key});
  static const routeName = '/video';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Video'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Video Page',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
