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
      body: Center(
        child: Text('콘칩 마시따 히히'),
      ),
    );
  }
}
