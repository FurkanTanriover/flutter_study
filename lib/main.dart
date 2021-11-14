import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _img1 =
      "https://cdn.dsmcdn.com/mnresize/500/-/ty2/product/media/images/20200401/12/851723/67284047/2/2_org.jpg";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red, accentColor: Colors.red),
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text(
            "app",
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.orange[300],
        ),
        body: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: expandedContainer,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("tıklandı");
          },
          backgroundColor: Colors.green,
          child: Icon(Icons.account_balance_wallet_outlined,
              color: Colors.lightGreen),
        ),
      ),
    );
  }

  List<Widget> get sorunluContainer {
    return <Widget>[
      Container(
        height: 75,
        width: 75,
        color: Colors.amber,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.blue,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.amber,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.blue,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.amber,
      ),
      Container(
        height: 75,
        width: 75,
        color: Colors.blue,
      ),
    ];
  }

  List<Widget> get expandedContainer {
    return <Widget>[
      Expanded(
        flex: 1, // biz yazmasakta her expanded da varsayılan olarak bir verilir total genişliği ve ya boyu katsayıyla orantılı olarak bölümlere ayırır
        child: Container(
          height: 75,
          width: 75,
          color: Colors.amber,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          height: 75,
          width: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          height: 75,
          width: 75,
          color: Colors.amber,
        ),
      ),
      Expanded(
        flex: 4,
        child: Container(
          height: 75,
          width: 75,
          color: Colors.blue,
        ),
      ),
    ];
  }

  Widget containerYapisi() {
    //containerımızın ortaya gelmesi için ctrl+"." ile center ile wrapladık ve onu merkeze çektik (childimi centera getir)
    return Center(
      // eğer containerın içinde herhangi bir eleman yoksa bir üst yapının varolan bütün alanına yayılır ve bir container çocuğu kadar yer kaplar
      child: Container(
        // eğer containera genişlik ve yükseklik değerini vermezsek ve aligment kullanırsak içindeki veri kadar değil parenti kadar yer kaplar
        width: 400,
        height: 400,
        alignment: Alignment.center,
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.all(50),
        color: Colors.purple,
        //Constrains ile containera mininmum ve  ya maksimum ne kadar alana yayılabileceğini söyleyebiliriz
        // constraints: BoxConstraints(
        //     minHeight: 100, minWidth: 100, maxWidth: 200, maxHeight: 200),
        child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          child: Icon(
            Icons.ad_units,
            color: Colors.orange,
            size: 64,
          ),
          decoration: BoxDecoration(
              color: Colors.deepPurple[900],
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.redAccent, width: 5),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  topRight: Radius.circular(30)),
              image:
                  DecorationImage(image: NetworkImage(_img1), fit: BoxFit.fill),
              boxShadow: [
                BoxShadow(
                    color: Colors.orangeAccent,
                    offset: Offset(30, 15),
                    blurRadius: 20),
                BoxShadow(
                    color: Colors.red,
                    offset: Offset(-30, -15),
                    blurRadius: 20),
              ]),
        ),
      ),
    );
  }
}
