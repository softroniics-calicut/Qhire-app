import 'package:flutter/material.dart';
import 'package:qhire/viewpost.dart';

void main() => runApp(const Recommented());

class Recommented extends StatelessWidget {
  const Recommented({super.key});

  static const String _title = 'View Recommented job';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        // clipBehavior is necessary because, without it, the InkWell's animation
        // will extend beyond the rounded edges of the [Card]
        // (see https://github.com/flutter/flutter/issues/109776)
        // This comes with a small performance cost, and you should not set [clipBehavior]
        // unless you need it.
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(50),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const SizedBox(
            width: 500,
            height: 800,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('View Recommented job\n'
                  'Job type\n'
                  'Details of job\n'
                  'Based on your interest\n'
                  '\n'),
            ),
          ),
        ),
      ),
    );
  }
}
