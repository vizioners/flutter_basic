import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
    return Scaffold(
      appBar: AppBar(title: Text('backgroundBlendMode')),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://flutter.io/images/catalog-widget-placeholder.png',
              ),
            ),
          ),
          child: Container(
            height: 200,
            width: 200,
            foregroundDecoration: BoxDecoration(
              backgroundBlendMode: BlendMode.exclusion,
              gradient: LinearGradient(
                colors: const [
                  Colors.red,
                  Colors.blue,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget container(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container as a layout')),
      body: Container(
        color: Colors.green,
        child: Text("Container",style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget containerExpand(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container as a layout')),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.green,
        child: Text("Container",style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget decoration(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container.decoration')),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.green),
        child: Text("Container",style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget foregroundDecoration(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container.foregroundDecoration')),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.yellowAccent),
        foregroundDecoration: BoxDecoration(color: Colors.red.withOpacity(0.5)),
        child: Text("Hi"),
      ),
    );
  }

  Widget transformContainer(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container.transform')),
      body: Container(
        height: 300,
        width: 300,
        transform: Matrix4.rotationZ(pi / 4),
        decoration: BoxDecoration(color: Colors.yellowAccent),
        child: Text(
          "Hi",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget imageDecoration(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('image: DecorationImage')),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.yellow,
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage(
                'https://flutter.io/images/catalog-widget-placeholder.png',
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget borderContainer(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('border: Border')),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(color: Colors.black, width: 3),
          ),
        ),
      ),
    );
  }

  Widget borderRadius(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('borderRadius: BorderRadius')),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.all(Radius.circular(18))),
        ),
      ),
    );
  }

  Widget boxShape(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('shape: BoxShape')),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }

  Widget boxShadow(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('boxShadow: List<BoxShadow>')),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.green,
            boxShadow: const [
              BoxShadow(blurRadius: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget linearGradient(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('gradient: LinearGradient')),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [
                Colors.red,
                Colors.blue,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget radialGradient(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('gradient: RadialGradient')),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: const [Colors.yellow, Colors.green],
              stops: const [0.4, 1.0],
            ),
          ),
        ),
      ),
    );
  }

  Widget sweepGradient(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('gradient: SweepGradient')),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            gradient: SweepGradient(
              colors: const [
                Colors.blue,
                Colors.green,
                Colors.yellow,
                Colors.red,
                Colors.blue,
              ],
              stops: const [0.0, 0.25, 0.5, 0.75, 1.0],
            ),
          ),
        ),
      ),
    );
  }

  Widget blendModeForeground(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('backgroundBlendMode')),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          foregroundDecoration: BoxDecoration(
            backgroundBlendMode: BlendMode.exclusion,
            gradient: LinearGradient(
              colors: const [
                Colors.red,
                Colors.blue,
              ],
            ),
          ),
          child: Image.network(
            'https://flutter.io/images/catalog-widget-placeholder.png',
          ),
        ),
      ),
    );
  }

  Widget blendModeTree(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('backgroundBlendMode')),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://flutter.io/images/catalog-widget-placeholder.png',
              ),
            ),
          ),
          child: Container(
            height: 200,
            width: 200,
            foregroundDecoration: BoxDecoration(
              backgroundBlendMode: BlendMode.exclusion,
              gradient: LinearGradient(
                colors: const [
                  Colors.red,
                  Colors.blue,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
