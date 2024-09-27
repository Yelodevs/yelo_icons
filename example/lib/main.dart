import 'package:flutter/material.dart';
import 'package:yelo_icons/yelo_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: const Text('Linxford Icons Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Home",
              style: TextStyle(fontSize: 40),
            ),
          ),
          Yelo.icon("bold/home", size: 100, color: Colors.red),
          Yelo.icon("broken/user", size: 100, color: Colors.red),
          Yelo.icon("bulk/category", size: 100, color: Colors.red),
          Yelo.icon("linear/cards", size: 100, color: Colors.red),
          Yelo.icon("outline/qr-code", size: 100, color: Colors.red),
          Yelo.icon("twotone/bank", size: 100, color: Colors.red),
        ],
      ),
    ));
  }
}
