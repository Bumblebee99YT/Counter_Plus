import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter +',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Counter +'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  
  void add() {
    setState(() {
      _counter++;
    });
  }
  void sub() {
    setState(() {
      _counter--;
    });
  }
  
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
            Text(
              'The count is:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Container(
              width: 150,
              height: 100,
              child: Row(
                children: <Widget>[
                  TextButton(
                    onPressed: add,
                    child: Icon(Icons.arrow_circle_up_sharp),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: sub,
                    child: Icon(Icons.arrow_circle_down_sharp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}