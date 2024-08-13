// ignore_for_file:must_be_immutable, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<String> friendList = ['Emon', 'Arif', 'Hridoy'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.deepPurple[200],
        // appBar: AppBar(
        //   backgroundColor: Colors.indigoAccent,
        //   title: Text('My App Bar'),
        //   elevation: 0,
        //   leading: Icon(Icons.menu),
        //   actions: [
        //     IconButton(
        //       onPressed: () {
        //
        //       },
        //       icon: Icon(Icons.logout),
        //     ),
        //   ],
        // ),

        // body: ListView(
        //   scrollDirection: Axis.horizontal,
        //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   // crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //   // 1st box
        //     Container(
        //       height: 350,
        //       width: 200,
        //       color: Colors.deepPurple,
        //     ),
        //
        //   // 2nd box
        // Container(
        //   height: 350,
        //   width: 200,
        //   color: Colors.deepPurple[400],
        // ),
        //
        //     // 3rd box
        //     Container(
        //       height: 350,
        //       width: 200,
        //       color: Colors.deepPurple[200],
        //     ),
        //   ],
        // ),

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

        // body: ListView.builder(
        //   itemCount: friendList.length,
        //   itemBuilder: (context, index) => ListTile(
        //     title: Text(friendList[index])
        //   ),
        //   ),

        body: GridView.builder(
            itemCount: 64,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (context, index) =>
                Container(
                    color: Colors.deepPurple,
                    margin:EdgeInsets.all(2),
                ),
        ),
      ),
    );
  }
}
