import 'package:flatform/bottomBar.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import 'data/rent.dart';
import 'models/ad.dart';

void main() async {
  // final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  // Hive.init(appDocumentDir.path);

  // await Hive.openBox<String>('favorites');

  WidgetsFlutterBinding.ensureInitialized();
  final appDocDir = await getApplicationDocumentsDirectory();

  Hive
    ..init(appDocDir.path)
    ..registerAdapter(AdAdapter());

  var rent = await Hive.openBox('rent');
  var sell = await Hive.openBox('sell');
  var favorites = await Hive.openBox('favorites');
  // rent.clear();
  // sell.clear();
  favorites.clear();

  rent.put('content', [
    Ad(image: './asset/images/5.jpg', name: 'Арендовать 1', price: 15000),
    Ad(image: './asset/images/5.jpg', name: 'Арендовать 2', price: 15000),
    Ad(image: './asset/images/5.jpg', name: 'Арендовать 3', price: 15000),
    Ad(image: './asset/images/5.jpg', name: 'Арендовать 4', price: 15000),
    Ad(image: './asset/images/5.jpg', name: 'Арендовать 5', price: 15000),
    Ad(image: './asset/images/5.jpg', name: 'Арендовать 6', price: 15000),
  ]);
  sell.put('content', [
    Ad(image: './asset/images/5.jpg', name: 'Купить 1', price: 15000),
    Ad(image: './asset/images/5.jpg', name: 'Купить 2', price: 15000),
    Ad(image: './asset/images/5.jpg', name: 'Купить 3', price: 15000),
    Ad(image: './asset/images/5.jpg', name: 'Купить 4', price: 15000),
    Ad(image: './asset/images/5.jpg', name: 'Купить 5', price: 15000),
    Ad(image: './asset/images/5.jpg', name: 'Купить 6', price: 15000),
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RentData>(create: (_) => RentData()),
      ],
      child: MaterialApp(
        title: 'flatform',
        theme: ThemeData(
          fontFamily: 'Quicksand',
        ),
        debugShowCheckedModeBanner: false,
        home: BottomBar(),
      ),
    );
  }
}
