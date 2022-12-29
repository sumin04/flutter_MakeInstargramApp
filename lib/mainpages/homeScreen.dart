import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Instagram',
        style: TextStyle(fontFamily: 'GrandHotel', fontSize: 30, color: Colors.black),
      ),
        // centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.add_box_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.favorite_outline),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.near_me_outlined),
            color: Colors.black,
          )
        ],
      ),
      body: Center(
        child: Text('착한 사람들만 보이는 글자임'),
      ),
    );
  }
}
