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
            body: const UpdateDemo()
            // Column(
            //   // mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     const Text(
            //       "Home",
            //       style: TextStyle(fontSize: 40),
            //     ),
            //     // Yelo.icon("bold/home", size: 100, color: Colors.red),
            //     // Yelo.icon("broken/user", size: 100, color: Colors.red),
            //     // Yelo.icon("bulk/category", size: 100, color: Colors.red),
            //     // Yelo.icon("linear/cards", size: 100, color: Colors.red),
            //     // Yelo.icon("outline/qr-code", size: 100, color: Colors.red),
            //     Center(
            //       child: Container(
            //         height: 60,
            //         width: 60,
            //         color: Colors.pinkAccent,
            //         child: Yelo.icon(
            //           "twotone/bank",
            //           size: 10,
            //           // color: Colors.red,
            //           // alignment: Alignment.center,
            //           semanticLabel: 'Ama',
            //           // fit: BoxFit.fitWidth,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            ));
  }
}

class UpdateDemo extends StatelessWidget {
  const UpdateDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Yelo.icon("outline/home",
        size: 150,
        color: Colors.blue,
        alignment: Alignment.topRight,
        textDirection: TextDirection.ltr,
        semanticLabel: 'No name');
  }
}
