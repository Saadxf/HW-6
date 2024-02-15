import 'package:flutter/material.dart';
import 'package:hw_6/components/display_list.dart';
import 'package:hw_6/components/upper_feild.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            UpperField(onUpdate:(){setState((){});}),
            DisplayList(),
          ],
        ),
      ),
    );
  }
}
