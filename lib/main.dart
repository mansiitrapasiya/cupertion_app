import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(home: MyhomePage());
  }
}

class MyhomePage extends StatefulWidget {
  const MyhomePage({Key? key}) : super(key: key);

  @override
  State<MyhomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyhomePage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("this is ios app"),
        leading: Icon(CupertinoIcons.back),
      ),
      child: Center(
        child: Text(
          '$_count',
          style: const TextStyle(fontSize: 30),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     _increament();
      //   },
      //   child: const Icon(Icons.add),
      // )
    );
  }

  void _increament() {
    setState(() {
      _count++;
    });
  }
}
