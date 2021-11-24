import 'package:flutter/material.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({Key? key}) : super(key: key);

  List<Ogrenci> tumOgrenciler = List.generate(
      500,
      (index) => Ogrenci(index + 1, "Ogrenci adı ${index + 1}",
          "Ogrenci soyadı ${index + 1}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Öğrenci Listesi",
          ),
        ),
        body: buildListviewSeperated());
  }

  ListView buildListviewSeperated() {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          var oAnKiOgrenci = tumOgrenciler[index];
          var oAnKiIndex = index + 1;
          return Card(
            color:
                index % 2 == 0 ? Colors.grey.shade500 : Colors.grey.shade300,
            child: ListTile(
              onTap: () {
                print("Tıklanan öğrenci=>$oAnKiIndex");
              },
              title: Text(oAnKiOgrenci.isim),
              subtitle: Text(oAnKiOgrenci.soyIsim),
              leading: CircleAvatar(
                child: Text(oAnKiOgrenci.id.toString()),
              ),
            ),
          );
        },
        itemCount: tumOgrenciler.length,
        separatorBuilder: (context, index) {
          var oAnKiIndex = index + 1;
          if (oAnKiIndex % 4 == 0) {
            return Divider(thickness: 4, color: Colors.teal.shade400);
          } else {
            return Container();
          }
        },
      );
  }

  ListView ClassicListView() {
    return ListView(
      // her seferinde okunan öğrencileri al ve bir listtile oluştur içine yaz
      children: tumOgrenciler
          .map((Ogrenci ogr) => ListTile(
                title: Text(ogr.isim),
                subtitle: Text(ogr.soyIsim),
                leading: CircleAvatar(
                  child: Text(ogr.id.toString()),
                ),
              ))
          .toList(),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyIsim;

  Ogrenci(this.id, this.isim, this.soyIsim);
}
