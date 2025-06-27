import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final imgeList = <String> [
      'assets/images/aummm3.jpg',
      'assets/images/aummm4.jpg',
      'assets/images/aummm5.jpg',
      'assets/images/aummm7.jpg',
      'assets/images/aummm12.jpg',
      'assets/images/aummm13.jpg',
      'assets/images/aummm14.jpg',
      'assets/images/aummm16.jpg',
      'assets/images/aummm2.jpg',
      'assets/images/tt1.jpg',

      
    ];

    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: imgeList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: const Color.fromARGB(255, 53, 255, 46),
              child: Image.asset(imgeList[index], fit: BoxFit.cover,)
            );
          },
        ),
      ),
    );
  }
}