import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:getx/homepage.dart';
import 'package:getx/provider/favourite.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => Favprovider(),
      child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
