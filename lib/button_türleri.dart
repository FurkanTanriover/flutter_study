// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ButtonTypePage extends StatelessWidget {
  const ButtonTypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: () {}, child: Text("Text button")),
        TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text("Text button with icon")),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.blue, onPrimary: Colors.yellow),
            child: Text("Elevated button")),
        ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.yellow),
              foregroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text("Elevated button with icon")),
        // ignore: deprecated_member_use
        OutlineButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Outline button with icon"),
        )
      ],
    );
  }
}

class DropdownPage extends StatefulWidget {
  const DropdownPage({Key? key}) : super(key: key);

  @override
  _DropdownPageState createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
  @override
  Widget build(BuildContext context) {
    String? _secilenIsim = null;

    return Center(
      child: DropdownButton<String>(
        hint: Text("İsim seçiniz"),
        items: [
          DropdownMenuItem(
            child: Text("Aleyna ismi"),
            value: ("Aleyna"),
          ),
          DropdownMenuItem(
            child: Text("Furkan ismi"),
            value: ("Furkan"),
          ),
          DropdownMenuItem(
            child: Text("Fatih ismi"),
            value: ("Fatih"),
          ),
        ],
        value: _secilenIsim,
        onChanged: (String? yeniIsim) {
          setState(() {
            _secilenIsim = yeniIsim;
          });
        },
      ),
    );
  }
}
