import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/controller/homescreencontroller.dart';

class Secondscreen extends StatelessWidget {
  const Secondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(onPressed: () {
          context.read<Homescreencontroller>().incriment();
        }));
  }
}
