import 'package:flutter/material.dart';

class ImageWidgetsPage extends StatefulWidget {
  const ImageWidgetsPage({Key? key}) : super(key: key);

  @override
  _ImageWidgetsPageState createState() => _ImageWidgetsPageState();
}

class _ImageWidgetsPageState extends State<ImageWidgetsPage> {
  @override
  Widget build(BuildContext context) {
    String _imgURL =
        "https://egagrup.com.tr/wp-content/uploads/gergi-tavan-gorseli-gergi-tavan-sekiller-ve-diger-gorseller.jpg";

    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            // rowu mu ınstrınsıcheight widget ile sarmaladım bu sayede bir sırada tüm görsellerim en büyük boyu olanla eşitlenecek
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                      color: Colors.green.shade500,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          "lib/assets/images/gergitavan.jpg",
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(20),
                      color: Colors.red.shade500,
                      child: Image.network(
                        "https://egagrup.com.tr/wp-content/uploads/gergi-tavan-gorseli-gergi-tavan-sekiller-ve-diger-gorseller.jpg",
                        fit: BoxFit.cover,
                      )),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue.shade500,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        child: Text(
                          "F",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        backgroundImage: NetworkImage(_imgURL),
                        radius: 70,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.purple.shade500,
            child: Padding(
              padding: const EdgeInsets.all(100.0),
              child: FadeInImage.assetNetwork(
                  placeholder: "lib/assets/images/dwnload.gif", image: _imgURL),
            ),
          ),
        ],
      ),
    );
  }
}
