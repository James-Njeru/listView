import 'package:flutter/material.dart';

void main() => runApp(const FlutterApp());

class FlutterApp extends StatefulWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  _FlutterAppState createState() => _FlutterAppState();
}

class _FlutterAppState extends State<FlutterApp> {
  var lists = List<String>.generate(500, (index) => "List:$index");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Drawer Widget'),
        ),
        body: ListView.builder(
          itemCount: lists.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text(lists[index]),
            );
          },
        ),
      ),
    );
  }
}
