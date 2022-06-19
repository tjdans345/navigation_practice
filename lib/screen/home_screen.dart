import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // true - pop 가능
        // false - pop 불가능
        // return false;
        final canPop = Navigator.of(context).canPop();
        return canPop;
      },

      child: MainLayOut(title: "Home Screen", children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:  30.0),
          child: ElevatedButton(
            onPressed: () async {
              // canPop 돌아갈 페이지가 있는지 즉 라우트 스택에 페이지가 남아있는지 boolean 값을 돌려준다.
              print(Navigator.of(context).canPop());
            },
            child: Text("Can Pop"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:  30.0),
          child: ElevatedButton(
            onPressed: () async {
              // maybePop 라우트 스택안에 페이지가 있을 때만 작동하게 해준다.
              Navigator.of(context).maybePop();
            },
            child: Text("Maybe Pop"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:  30.0),
          child: ElevatedButton(
            onPressed: () async {
              Navigator.of(context).pop();
            },
            child: Text("Pop"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: ElevatedButton(
            onPressed: () async {
              final result = await Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => RouteOneScreen(
                        number: 10,
                      )));
              print(result);
            },
            child: Text("push"),
          ),
        ),
      ]),
    );
  }
}
