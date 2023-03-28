import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'ev_provider.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // MultiProvider를 통해 여러가지 Provider를 관리
        home: MultiProvider(

            // ChangeNotifierProvider 통해 변화에 대해 구독
            providers: [
              ChangeNotifierProvider(
                  create: (BuildContext context) => EvProvider())
            ],
            child: const Home() // home.dart
            ));
  }
}
