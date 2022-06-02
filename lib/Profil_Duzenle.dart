import 'package:hayvan_dostu/Profil.dart';
import 'package:flutter/material.dart';
import 'package:hayvan_dostu/main.dart';
import 'package:hayvan_dostu/provider/kullanici_provider.dart';
import 'package:provider/provider.dart';

class ProfilDuzen extends StatefulWidget {
  const ProfilDuzen({Key? key}) : super(key: key);

  @override
  State<ProfilDuzen> createState() => _ProfilDuzenState();
}

class _ProfilDuzenState extends State<ProfilDuzen> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[500],
        body: Center(
          child: SizedBox(
            width: double.infinity,
            height: 550,
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Profil Düzenle',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Kullanıcı Adı: ',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        labelText: 'Kullanıcı Adınız',
                        labelStyle: new TextStyle(
                          color: Colors.black,
                        ),
                      ),

                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Şifre: ',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        labelText: 'Şifreniz',
                        labelStyle: new TextStyle(
                          color: Colors.black,
                        ),
                      ),

                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Mail: ',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        labelText: 'Mail',
                        labelStyle: new TextStyle(
                          color: Colors.black,
                        ),
                      ),

                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        onPrimary: Colors.white,
                        padding: EdgeInsets.all(12),
                      ),
                      onPressed: () {

                      },
                      child: Text(
                        'Onayla',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent,
                      onPrimary: Colors.white,
                      padding: EdgeInsets.all(12),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HayvanDostu()),
                      );
                    },
                    child: Icon(
                      Icons.home,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
