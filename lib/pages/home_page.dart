import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  final int days = 0;
  final String name = "Catalog App";
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      drawer: MyDrawer(),
      body: Center(
          child: Center(
        child: Container(
          child: Text("Welcome to Day $days on $name"),
        ),
      )),
    );
  }
}
