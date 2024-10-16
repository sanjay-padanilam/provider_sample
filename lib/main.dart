import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/controller/homescreencontroller.dart';
import 'package:provider_sample/view/homescreen/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Homescreencontroller(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homescreen(),
      ),
    );
  }
}
