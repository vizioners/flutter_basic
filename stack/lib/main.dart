import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
    return stackLayoutBuilder(context);
  }

  Widget stackLayoutBuilder(BuildContext context) {
    const iconSize = 50.0;
    return Scaffold(
      appBar: AppBar(title: Text('Stack with LayoutBuilder')),
      body: LayoutBuilder(
        builder: (context, constraints) =>
            Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Material(color: Colors.yellowAccent),
                Positioned(
                  top: 0,
                  child: Icon(Icons.star, size: iconSize,color: Colors.green),
                ),
                Positioned(
                  top: constraints.maxHeight - iconSize,
                  left: constraints.maxWidth - iconSize,
                  child: Icon(Icons.call, size: iconSize,color: Colors.green),
                ),
              ],
            ),
      ),
    );
  }

  Widget stackPosition(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack')),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Material(color: Colors.yellowAccent),
          Positioned(
            top: 0,
            left: 0,
            child: Icon(Icons.star, size: 50,color: Colors.green,),
          ),
          Positioned(
            top: 340,
            left: 250,
            child: Icon(Icons.call, size: 50,color: Colors.green),
          ),
        ],
      ),
    );
  }

  Widget banner(BuildContext context) {
    Widget main = Scaffold(
      appBar: AppBar(title: Text('Stack')),
    );

    return Stack(
      fit: StackFit.passthrough,
      children: <Widget>[
        main,
        Banner(
          message: "Top Start",
          location: BannerLocation.topStart,
        ),
        Banner(
          message: "Top End",
          location: BannerLocation.topEnd,
        ),
        Banner(
          message: "Bottom Start",
          location: BannerLocation.bottomStart,
        ),
        Banner(
          message: "Bottom End",
          location: BannerLocation.bottomEnd,
        ),
      ],
    );
  }
}
