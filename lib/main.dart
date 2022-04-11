import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

void main() {
  runApp(
    RobotDetector(
      child: MaterialApp(
        home: const MyApp(),
        navigatorObservers: [seoRouteObserver],
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (_) => SingleTextItem()));
              },
              child: const TextRenderer(
                child: Text('Single Text Item'),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (_) => ScrollableContent()));
              },
              child: const TextRenderer(
                child: Text('Scrollable Text Content'),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (_) => SingleTextLinkExample()));
              },
              child: const TextRenderer(
                child: Text('Single Link Text Item'),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (_) => ImageRendererExample()));
              },
              child: const TextRenderer(
                child: Text('Image renderer'),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (_) => VisibilityExample()));
              },
              child: const TextRenderer(
                child: Text('Visibility'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}