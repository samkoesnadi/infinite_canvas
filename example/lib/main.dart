import 'package:flutter/material.dart';

import 'package:example/aisha.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Aisha(),
      darkTheme: ThemeData.dark(useMaterial3: true),
    );
  }
}
