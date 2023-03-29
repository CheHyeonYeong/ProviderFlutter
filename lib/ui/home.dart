import 'package:flutter/material.dart';

import 'view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListWidget(), //다른 위젯을 통해 UI를 꾸밀 수 있음음
    );
  }
}
