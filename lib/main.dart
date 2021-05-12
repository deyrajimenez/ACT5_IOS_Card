import 'package:flutter/material.dart';

void main() => runApp(MiTarjetaApp());

class MiTarjetaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('AppBar Tarjetas Jimenez'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
            ],
          ),
          body: Container(
            child: ListView(
              children: <Widget>[
                _items('https://raw.githubusercontent.com/deyrajimenez/MisImagenes25/main/065DE14A-F5C1-4F34-AB26-CFDED8937A4C.jpeg', 'Gato'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/deyrajimenez/MisImagenes25/main/00ED87B7-13D0-4A62-B6C6-D729E6F0CCD3.jpeg', 'Gato 2'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/deyrajimenez/MisImagenes25/main/9D58EA6A-911C-4F35-B1FA-C2F63B0C78D4.jpeg', 'Rana'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/deyrajimenez/MisImagenes25/main/rana1.jpeg', 'Rana 2'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/deyrajimenez/MisImagenes25/main/erizo.jpeg', 'Erizo'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/deyrajimenez/MisImagenes25/main/F379B8F8-3CE4-4C0C-9AFC-BB64DD5DC7C2.jpeg', 'Deyra'),
                SizedBox(height: 5.0),
              ], //Fin de Widget
            ),
          ), //Fin contenedor
        )); //Fin MaterialApp
  } //Fin de Widget

  Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.purple[100],
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text(' oh my my my ! ', style: TextStyle(fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
} //Fin de mi tarjeta app
