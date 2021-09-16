import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gradient Text',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textGradient = LinearGradient(colors: [
      Colors.cyan,
      Colors.deepOrange
    ]); // create a variable for gradient color

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Gradient Text'),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: ShaderMask(
          shaderCallback: (Rect rect) {
            return textGradient.createShader(rect);
          },
          child: Container(
            width: 300,
            child: Text(
              'This is a Gradient Text',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 36,
                  color: Colors
                      .white // color should be white for zero interference with shader
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
