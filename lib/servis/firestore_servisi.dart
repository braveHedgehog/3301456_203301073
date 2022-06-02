import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hayvan_dostu/Kullanicilar/kullanici.dart';


class FirestoreServis{
  FirebaseFirestore _db=FirebaseFirestore.instance;

  Future<void> saveKullanici(Kullanici kullanici){
    return _db
        .collection('kullaniciler')
        .doc(kullanici.kullaniciId)
        .set(kullanici.toMap());
  }
}