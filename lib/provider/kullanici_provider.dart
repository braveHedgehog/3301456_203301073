import 'package:flutter/cupertino.dart';
import 'package:hayvan_dostu/Kullanicilar/kullanici.dart';
import 'package:hayvan_dostu/servis/firestore_servisi.dart';
import 'package:uuid/uuid.dart';

class KullaniciProvider with ChangeNotifier{
  final firestoreServis =FirestoreServis();
  String? _kullaniciAdi;
  String? _email;
  String? _kullaniciId;
  String? _sifre;
  var uuid=Uuid();

  String? get kullaniciAdi =>_kullaniciAdi;
  String? get email => _email;
  String? get kullaniciId => _kullaniciId;
  String? get sifre => _sifre;


  KullaniciDuzenle(String deger){
    _kullaniciAdi=deger;
    notifyListeners();
  }

  MailDuzenle(String deger){
    _email=deger;
    notifyListeners();
  }

  SifrelDuzenle(String deger){
    _sifre=deger;
    notifyListeners();
  }

  kullaniciOlustur(){
    var yeniKullanici= Kullanici(kullaniciAdi: kullaniciAdi,email: email,sifre: sifre,kullaniciId: uuid.v4());
    firestoreServis.saveKullanici(yeniKullanici);

  }

}