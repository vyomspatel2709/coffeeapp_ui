import 'package:flutter/material.dart';

class MyUI extends StatelessWidget {
  const MyUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Center(child: Text("Home")),
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text("0"),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [],
          ),
        ),
      )),
    );
  }
}
