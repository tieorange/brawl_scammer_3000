import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _counter = 0;
  int _counterRounded = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Сколько гемов Вы хотите?',
            ),
            Text(
              "$_counterRounded",
              style: Theme.of(context).textTheme.headline4,
            ),
            BalloonSlider(
                value: _counter,
                ropeLength: 300,
                showRope: true,
                onChangeStart: (val) {
                  setState(() {
                    _counter = val;
                    _counterRounded = (val * 1000).round();
                    // _counter = (val * 100).round();

                    print((val * 100).round());
                    print(val);
                  });
                },
                onChanged: (val) {
                  setState(() {
                    _counter = val;
                    _counterRounded = (val * 1000).round();
                    // _counter = (val * 100).round();

                    print((val * 100).round());
                    print(val);
                  });
                },
                onChangeEnd: (val) {
                  setState(() {
                    _counter = val;
                    _counterRounded = (val * 1000).round();
                    // _counter = (val * 100).round();

                    print((val * 100).round());
                    print(val);
                  });
                },
                color: Colors.indigo)
          ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
