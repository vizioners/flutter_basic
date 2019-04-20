import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SizedBox',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'SizedBox Demo'),
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

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        width: double.infinity,
        height: 200.0,
        child: Card(
            child: Center(child: Text('Hello World!',style: TextStyle(color: Colors.white),),),
            color: Colors.green
        ),
      ),
    );
  }

  Widget sizedBoxExpand(){
    return SizedBox.expand(
      child: Card(
          child: Center(child: Text('Hello World!',style: TextStyle(color: Colors.white),),),
          color: Colors.green
      ),
    );
  }

  Widget sizedBoxWithSize(){
    return SizedBox(
      width: 200.0,
      height: 200.0,
      child: Card(
          child: Center(child: Text('Hello World!',style: TextStyle(color: Colors.white),),),
          color: Colors.green
      ),
    );
  }

  Widget sizedBoxPadding(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(Icons.star, size: 50,color: Colors.green,),
            const SizedBox(height: 100.0),
            Icon(Icons.star, size: 50,color: Colors.green),
            Icon(Icons.star, size: 50,color: Colors.green),
          ],
        )
      ],
    );
  }

  Widget sizedBoxVisible(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            isVisible
                ? Icon(Icons.star, size: 150,color: Colors.green,)
                : const SizedBox(),
            FlatButton(
              child: Text("Demo"),
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}
