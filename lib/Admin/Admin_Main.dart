import 'package:flutter/material.dart';
import 'package:hayvan_dostu/girisYap.dart';
import 'package:hayvan_dostu/main.dart';
import 'package:hayvan_dostu/Admin/Admin_Profil.dart';

class AdminMain extends StatefulWidget {
  const AdminMain({Key? key}) : super(key: key);

  @override
  State<AdminMain> createState() => _AdminMainState();
}

class _AdminMainState extends State<AdminMain> {
  String baslik = 'Hayvan Dostu';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[500],
          title: Text(
            baslik,
            style: TextStyle(fontSize: 30),
          ),
          actions: [
            FlatButton(
              //color: Colors.orange,
              hoverColor: Colors.indigo[600],
              highlightColor: Colors.indigo[600],
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GirisYap()),
                );
              },
              child: Text(
                'Giriş Yap',
                style: TextStyle(color: Colors.white),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HayvanDostu()),
                );
              },
              icon: Icon(
                Icons.home,
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  'Ürünler',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: [
                      Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/kedimama1.jpg',
                              width: 90,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Kedi Mama'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('20 TL'),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blueAccent,
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.all(8),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'İncele',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/kopektasma1.jpg',
                              width: 90,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Köpek Tasması'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('70 TL'),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blueAccent,
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.all(8),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'İncele',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/kedikum1.jpg',
                              width: 90,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Kedi Kumu'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('50 TL'),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blueAccent,
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.all(8),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'İncele',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  'Kullanıcılar',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              Row(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Row(
                        children: [
                          Text("Kullanıcı Adı",style: TextStyle(fontSize: 20),),
                          SizedBox(
                            width: 270,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blueAccent,
                                onPrimary: Colors.white,
                                padding: EdgeInsets.all(8),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Admin_Profil()),
                                );
                              },
                              child: Text(
                                'Görüntüle',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
