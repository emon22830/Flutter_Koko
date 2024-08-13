// ignore_for_file:must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: Text('My App Bar'),
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.logout),
            ),
          ],
        ),
        // body: Center(
        //   child: Container(
        //     height: 300,
        //     width: 300,
            // decoration: BoxDecoration(
            //   color: Colors.deepPurple,
            //   //   curve the corners a bit
            //   borderRadius: BorderRadius.circular(20),
            // ),
            // padding: EdgeInsets.all(25),
            // child: Text(
            //   'Hey Emon',
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 28,
            //     fontWeight: FontWeight.bold
            //   ),
            // ),
            // child: Icon(
            //   Icons.favorite,
            //   color: Colors.red,
            //   size: 64,
            // ),
        //   ),
        // ),
      ),
    );
  }
}
