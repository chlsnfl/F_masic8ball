import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: masicballPage(),
  ),
);

class masicballPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: masic8ball(),
    );
  }
}

class masic8ball extends StatefulWidget {
  const masic8ball({super.key});

  @override
  State<masic8ball> createState() => _masic8ballState();
}

class _masic8ballState extends State<masic8ball> {
  int masicNm = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child : TextButton(
          onPressed: (){
            setState(() {
              masicNm = Random().nextInt(5)+1;
              print('CLICK');
            });
          },
      child: Image.asset('images/ball$masicNm.png'),
      )
    );
  }
}

