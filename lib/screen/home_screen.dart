import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayOut(title: "Home Screen", children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:  30.0),
        child: ElevatedButton(
          onPressed: () async {
            final result = await Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => RouteOneScreen(number: 10,))
            );
            print(result);
          },
          child: Text("push"),
        ),
      ),
    ]);
  }
}
