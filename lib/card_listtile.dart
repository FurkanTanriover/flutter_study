import 'package:flutter/material.dart';

class CardAndListtile extends StatelessWidget {
  const CardAndListtile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card And Listtile"),
      ),
      body: Center(
        child: UseListView(),
      ),
    );
  }

  ListView UseListView() {
    return ListView(
        //listview birden fazla çocuk alabilir (text,button vb.)
        children: [
          Column(
            children: [
              Text(
                "Selam",
                style: TextStyle(backgroundColor: Colors.blue.shade100),
              ),
              TekListeElemani(),
              TekListeElemani(),
              TekListeElemani(),
              TekListeElemani(),
              TekListeElemani(),
              TekListeElemani(),
              TekListeElemani(),
            ],
          ),
        ]);
  }

  SingleChildScrollView UseSingleChildScrollView() {
    return SingleChildScrollView(
      // singlechildscrollview tek bir çocuk bekler
      child: Column(
        children: [
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
        ],
      ),
    );
  }

  Column TekListeElemani() {
    return Column(
      children: [
        Card(
            color: Colors.blue.shade100,
            shadowColor: Colors.red,
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: ListTile(
              leading: Icon(Icons.add),
              title: Text("Hava durumu "),
              subtitle: Text("Pazartesi : 10"),
              trailing: Icon(Icons.ac_unit_sharp),
            )),
        Divider(
          color: Colors.red,
          thickness: 1,
          height: 25,
          indent: 60,
          endIndent: 60,
        )
      ],
    );
  }
}
