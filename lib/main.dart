import 'package:flatform/bottomBar.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);

  await Hive.openBox<String>('favorites');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flatform',
      theme: ThemeData(
        fontFamily: 'Quicksand',
      ),
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
    );
  }
}
