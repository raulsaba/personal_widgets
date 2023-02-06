import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raul Sabadin - Custom Widgets',
      scrollBehavior: ScrollConfiguration.of(context)
          .copyWith(scrollbars: false, dragDevices: {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      }),
      theme: ThemeData(
        primarySwatch: Colors.purple,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
        ),
      ),
      home: const MyHomePage(title: 'My Custom Widgets'),
    );
  }
}
