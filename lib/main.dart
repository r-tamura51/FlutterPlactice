import 'package:flutter/material.dart';
import 'package:saito0228/next.dart';

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final myFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KBOYのFlutter大学！！！'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'KBOYのFlutter大学',
              ),
              onChanged: (text){
                print("First Text field: $text");
              },
            ),
            TextField(
              focusNode: myFocusNode,
            ),
            ElevatedButton(
              child: Text("フォーカス！！！"),
              onPressed: (){
                myFocusNode.requestFocus();
                },
                )
                ],
        ),
      ),
    );
  }
}
