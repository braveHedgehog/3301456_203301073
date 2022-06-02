import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hayvan_dostu/girisYap.dart';
import 'package:hayvan_dostu/main.dart';
import 'package:hayvan_dostu/provider/kullanici_provider.dart';
import 'package:provider/provider.dart';

class UyeOl extends StatefulWidget {
  const UyeOl({Key? key}) : super(key: key);

  @override
  State<UyeOl> createState() => _UyeOlState();
}

class _UyeOlState extends State<UyeOl> {
  @override
  Widget build(BuildContext context) {
    final kullaniciProvider=Provider.of<KullaniciProvider>(context);
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
                      'Üye Ol',
                      style: TextStyle(fontSize: 25, color: Colors.black),
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
                        labelText: 'Mailiniz',
                        labelStyle: new TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      onChanged: (deger){
                        kullaniciProvider.MailDuzenle(deger);
                      },
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
                      onChanged: (deger){
                        kullaniciProvider.KullaniciDuzenle(deger);
                      },
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
                      onChanged: (deger){
                        kullaniciProvider.SifrelDuzenle(deger);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                        onPrimary: Colors.white,
                        padding: EdgeInsets.all(12),
                      ),
                      onPressed: () {
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GirisYap()),
                        );*/
                        kullaniciProvider.kullaniciOlustur();
                      },
                      child: Text(
                        'Üye Ol',
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
                      /*Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HayvanDostu()),
                      );*/

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
