import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/controller/homescreencontroller.dart';
import 'package:provider_sample/view/secondscreen/secondscreen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final prividobj = context.watch<Homescreencontroller>();

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              prividobj.count.toString(),
              style: TextStyle(fontSize: 130, color: Colors.red),
            ),
            Text(
              prividobj.name,
              style: TextStyle(fontSize: 130, color: Colors.red),
            ),
            Text(
              context.watch<Homescreencontroller>().count.toString(),
              style: TextStyle(fontSize: 130, color: Colors.red),
            ),
            Text(
              context.watch<Homescreencontroller>().count.toString(),
              style: TextStyle(fontSize: 130, color: Colors.red),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // context.read<Homescreencontroller>().incriment();
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Secondscreen(),
              ));
        },
        child: Text("click"),
      ),
    );
  }
}
