import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ! : null 값이 들어오지 않는다고 명시해줌
    final arguments = ModalRoute.of(context)!.settings.arguments;
    return MainLayOut(
      title: "Route Two",
      children: [
        Text(
          "argument : $arguments",
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Pop")),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/three', arguments: 990);
            },
            child: Text("route three push"))
      ],
    );
  }
}
