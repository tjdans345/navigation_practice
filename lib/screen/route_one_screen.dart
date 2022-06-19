import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  // 값을 전달 받는 첫 번째 방법 생성자를 통해서 받기
  final int? number;

  const RouteOneScreen({this.number, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayOut(title: "Route One Screen", children: [
      // MainAxisAlign vs TextAlign Center 의 차이점은
      // 텍스트 위젯은 기본이 왼쪽 정렬이라서 센터를 해줘야 전체 공간안에서 텍스트가 가운데로 정렬이된다.
      Text(
        'argument ${number.toString()}',
        textAlign: TextAlign.center,
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(456);
          },
          child: Text("Pop")),
      ElevatedButton(
          onPressed: () {
            // 페이지는 스택 구조로 쌓인다.
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => RouteTwoScreen(
                ),
                settings: RouteSettings(
                  arguments: 789,
                )
              ),
            );
          },
          child: Text("Push"))
    ]);
  }
}
