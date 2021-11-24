import 'package:flutter/material.dart';
import 'package:flutter_temel_widget/button_t%C3%BCrleri.dart';
import 'package:flutter_temel_widget/card_listtile.dart';
import 'package:flutter_temel_widget/image_widgets.dart';
import 'package:flutter_temel_widget/list_view_kullanimi.dart';
import 'package:flutter_temel_widget/my_counter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "MY APP", home: ListViewKullanimi());
  }
}
