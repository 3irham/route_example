import 'package:flutter/material.dart';
import 'package:route_example/image.dart';
import 'package:route_example/video.dart';

class Media extends StatelessWidget {
  const Media({super.key});
  static const routeName = '/media';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Media Page',
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, Picture.routeName);
              },
              heroTag: 'image',
              child: const Icon(Icons.image),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, Video.routeName);
              },
              heroTag: 'Video',
              child: const Icon(Icons.video_collection),
            ),
          ],
        ),
      ),
    );
  }
}
