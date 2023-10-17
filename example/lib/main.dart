import 'package:example/level_of_detail.dart';
import 'package:example/web_views.dart';
import 'package:example/widgets.dart';
import 'package:flutter/material.dart';

import 'generated_nodes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Widgets(),
      // theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      // themeMode: ThemeMode.system,
    );
  }
}
