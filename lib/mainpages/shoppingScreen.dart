import 'package:flutter/material.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingScreen> createState() => _ShoppingScreen();
}

class _ShoppingScreen extends State<ShoppingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop',
          style: TextStyle(fontFamily: 'NanumGothic', fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.bookmark_border),
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
        child: Text('콘칩 마시따 히히'),
      ),
    );
  }
}
