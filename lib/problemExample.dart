import 'package:flutter/material.dart';

class ProblemExample extends StatelessWidget {
  const ProblemExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? _secilen = null;
    return Scaffold(
      appBar: AppBar(
        title: Text("Problem Example"),
      ),
      body: ListInRow(),
    );
  }

  Container ListInRow() {
    return Container(
      height: 250,
      child: Row(
        children: [
          Text(
            "başladı",
            style: TextStyle(fontSize: 20),
          ),
          Expanded(
            child: ListView(scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                children: [
                  Container(
                    width: 200,
                    color: Colors.purple.shade300,
                  ),
                  Container(
                    width: 200,
                    color: Colors.purple.shade600,
                  ),
                  Container(
                    width: 200,
                    color: Colors.purple.shade300,
                  ),
                  Container(
                    width: 200,
                    color: Colors.purple.shade600,
                  ),
                ]),
          ),
          Text(
            "bitti",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(width: 4, color: Colors.redAccent.shade400)),
    );
  }

  Column ListInColumn() {
    return Column(
      children: [
        Text(
          "başladı",
          style: TextStyle(fontSize: 20),
        ),
        Expanded(
          child: ListView(
            // shrinkWrap:  true,  listview içindeki çocukların yüksekliği kadar yer kaplar ama expanded ile kaplanınca pek önemi kalmaz
            children: [
              Container(
                height: 200,
                color: Colors.purple.shade300,
              ),
              Container(
                height: 200,
                color: Colors.purple.shade600,
              ),
              Container(
                height: 200,
                color: Colors.purple.shade300,
              ),
              Container(
                height: 200,
                color: Colors.purple.shade600,
              )
            ],
          ),
        ),
        Text(
          "bitti",
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}
