import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

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
          color: index % 2 == 0 ? Colors.grey.shade500 : Colors.grey.shade300,
          child: ListTile(
            onTap: () {
              if (index % 2 == 0) {
                EasyLoading.instance.backgroundColor = Colors.red[900];
              } else {
                EasyLoading.instance.backgroundColor = Colors.blue[900];
                EasyLoading.instance.textColor = Colors.yellow;
              }
              EasyLoading.showToast(
                "Tıklanın öğrenci => $oAnKiIndex",
                duration: Duration(
                  seconds: 3,
                ),
                toastPosition: EasyLoadingToastPosition.bottom,
              );
            },
            onLongPress: () {
              UseAlertDialog(context, oAnKiOgrenci);
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

void UseAlertDialog(BuildContext myContext, Ogrenci secilen) {
  showDialog(
      barrierDismissible: false,
      context: myContext,
      builder: (context) {
        return AlertDialog(
          title: Text("Öğrenci bilgisi"),
          content: SingleChildScrollView(
            child: Text(secilen.toString()),
          ),
          actions: [
            ButtonBar(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("KAPAT")),
                TextButton(onPressed: () {}, child: Text("ANLADIM")),
              ],
            )
          ],
        );
      });
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyIsim;

  Ogrenci(this.id, this.isim, this.soyIsim);
  @override
  String toString() {
    return ("Ogrenci adı : $isim, Soyisim : $soyIsim");
  }
}
