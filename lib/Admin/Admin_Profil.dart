import 'package:flutter/material.dart';
import 'package:hayvan_dostu/girisYap.dart';
import 'package:hayvan_dostu/main.dart';
import 'package:hayvan_dostu/Admin/Admin_Main.dart';

class Admin_Profil extends StatefulWidget {
  const Admin_Profil({Key? key}) : super(key: key);

  @override
  State<Admin_Profil> createState() => _Admin_ProfilState();
}

class _Admin_ProfilState extends State<Admin_Profil> {
  @override
  Widget build(BuildContext context) {
    String baslik='Hayvan Dostu';
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
                child: Icon(
                  Icons.account_circle_rounded,
                  size: 150,
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
                    labelText: 'Kullanıcı Adı',
                    labelStyle: new TextStyle(
                      color: Colors.black,
                    ),
                  ),
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
                    labelText: 'Kullanıcı Mail',
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
                    primary: Colors.red,
                    onPrimary: Colors.white,
                    padding: EdgeInsets.all(12),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Kullanıcı Sil',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
