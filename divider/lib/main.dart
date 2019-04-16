import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Divider Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Divider'),
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.black,
            indent: 20.0,
            height: 0.0,
          ),
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return new GestureDetector(
              child: new Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(child: Text("Index $index")),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    child: new CupertinoAlertDialog(
                      title: new Column(
                        children: <Widget>[
                          new Text("Divider"),
                          new Icon(
                            Icons.favorite,
                            color: Colors.green,
                          )
                        ],
                      ),
                      content: new Text("Selected Item $index"),
                      actions: <Widget>[
                        new FlatButton(onPressed: () {
                          Navigator.of(context).pop();
                        },
                            child: new Text("OK")
                        )
                      ],
                    )
                );
              },
            );
          }
      ),
    );
  }
}
