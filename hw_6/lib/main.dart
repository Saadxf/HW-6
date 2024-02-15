import 'package:flutter/material.dart';
import 'package:hw_6/screen/home_screen.dart';
import 'package:hw_6/utils/setup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
