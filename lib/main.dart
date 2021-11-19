import 'package:flutter/material.dart';
import 'package:flutter_temel_widget/image_widgets.dart';
import 'package:flutter_temel_widget/my_counter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MY APP",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("APP"),
        ),
        body: ImageWidgetsPage(),
      ),
    );
  }
}
