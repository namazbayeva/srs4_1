import 'package:flutter/material.dart';
import 'package:srs4/secondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            ).then((value) {

              print('Перейти к следующему экрану $value');
            });
          },
          child: Text('Перейти к следующему экрану'),
        ),
      ),
    );
  }
}