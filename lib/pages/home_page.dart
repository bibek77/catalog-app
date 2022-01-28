import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int days = 0;
  final String name = "Uchicha Sasuke";
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
          child: Center(
        child: Container(
          child: Text("Welcome to Day $days with $name"),
        ),
      )),
    );
  }
}
