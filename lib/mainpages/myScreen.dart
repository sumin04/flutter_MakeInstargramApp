import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('s._.min.1',
          style: TextStyle(fontFamily: 'NanumGothic', fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.add),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.density_medium),
            color: Colors.black,
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text('운동하러 가기 귀찮네'),
      ),
    );
  }
}
