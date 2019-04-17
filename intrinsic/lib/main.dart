import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Viziondary',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Viziondary'),
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

  @override
  Widget build(BuildContext context) {
    return intrinsicHeight(context);
  }

  Widget intrinsicWeight(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('IntrinsicWidth')),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: Text('Short',style: TextStyle(color: Colors.white)),
                color: Colors.green,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('A bit Longer',style: TextStyle(color: Colors.white)),
                color: Colors.green,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('The Longest text button',style: TextStyle(color: Colors.white)),
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget intrinsicHeight(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('IntrinsicHeight')),
      body: Center(
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RotatedBox(
                  quarterTurns: 1,
                  child:RaisedButton(
                    onPressed: () {},
                    child: Text('Short',style: TextStyle(color: Colors.white)),
                    color: Colors.green,

                  )
              ),
              RotatedBox(
                  quarterTurns: 1,
                  child:RaisedButton(
                    onPressed: () {},
                    child: Text('A bit Longer',style: TextStyle(color: Colors.white)),
                    color: Colors.green,
                  )
              ),
              RotatedBox(
                quarterTurns: 1,
                child:RaisedButton(
                  onPressed: () {},
                  child: Text('The Longest text button',style: TextStyle(color: Colors.white)),
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
