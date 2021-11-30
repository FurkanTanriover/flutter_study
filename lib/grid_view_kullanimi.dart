import 'package:flutter/material.dart';

class GridViewKullanimi extends StatelessWidget {
  GridViewKullanimi({Key? key}) : super(key: key);

  List<Product> allProduct = List.generate(
      21, (index) => Product(index + 1, "Ürün adı : ÜRÜN$index+1", index + 1));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView.builder(
          itemCount: allProduct.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  //gradient tanımlarsak colorun bir geçerliliği kalmaz.
                  gradient: LinearGradient(
                      colors: [Colors.yellow, Colors.blue],
                      begin: Alignment.bottomLeft,
                      end: Alignment.centerRight),
                  border: Border(
                    top: BorderSide(color: Colors.yellow.shade500, width: 5),
                    bottom: BorderSide(color: Colors.blue.shade500, width: 5),
                    right: BorderSide(color: Colors.yellow.shade500, width: 5),
                    left: BorderSide(color: Colors.blue.shade500, width: 5),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.yellow.shade200,
                      offset: Offset(10, 0),
                      spreadRadius: 5,
                      blurRadius: 3,
                    ),
                    BoxShadow(
                      color: Colors.blue.shade200,
                      offset: Offset(0, 10),
                      spreadRadius: 1,
                      blurRadius: 3,
                    ),
                  ]),
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text(
                "x",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            );
          }),
    );
  }
}

class Product {
  final int Id;
  final String name;
  final int price;

  Product(this.Id, this.name, this.price);
}
