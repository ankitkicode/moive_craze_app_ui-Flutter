// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ClickScreen extends StatelessWidget {
  const ClickScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(221, 99, 97, 97),
        
      ),
      backgroundColor: Color.fromARGB(95, 70, 68, 68),
      body: Center(
        child: Text("HELLO"),
      ),
    );
  }
}