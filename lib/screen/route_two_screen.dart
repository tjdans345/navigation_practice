import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_three_screen.dart';

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
            child: Text("route three push")),
        ElevatedButton(
            onPressed: () {
              // pushReplacement : push 랑 비슷하다고 생각하면 됨
              // pushReplaceNamed : named router 랑 비슷하다고 생각하면 됨
              // pushReplacement 는 이동하기 직전의 페이지를 지워버리고 자기 페이지를 대체한다. (흠.. 이전페이지로 못돌아가게 할 때 사용하면 좋겠군)
              // pushReplacementNamed 도 마찬가지이다.
              // Navigator.of(context).pushReplacement(
              //   MaterialPageRoute(
              //     builder: (_) => RouteThreeScreen(),
              //   ),
              // );
              Navigator.of(context).pushReplacementNamed('/three');
            },
            child: Text('push replacement')),
        ElevatedButton(
            onPressed: () {
              // pushAndRemoveUntil 를 사용하면 2번째 인자에서 false / true 값에 따라 이전 페이지를 살릴지 없앨지 결정한다.
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (_) => RouteThreeScreen()),
                  // route.settings.name 안에는 메인에서 지정한 routes 에 들어있는 페이지 이름들이 담겨있다.
                  (route) => route.settings.name == '/');
            },
            child: Text('Push And Remove Until'))
      ],
    );
  }
}
