import 'package:flutter/material.dart';

class Picture extends StatelessWidget {
  const Picture({super.key});
  static const routeName = '/picture';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Image'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Image Page',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
