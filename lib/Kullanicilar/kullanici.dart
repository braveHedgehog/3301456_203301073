class Kullanici{
  final String? kullaniciId;
  final String? email;
  final String? kullaniciAdi;
  final String? sifre;

  Kullanici({this.kullaniciId,this.kullaniciAdi,this.sifre,this.email});

  Map<String, dynamic> toMap() {
    return{
      'kullaniciId':kullaniciId,
      'kullaniciAdi' :kullaniciAdi,
      'email' :email,
      'sifre':sifre,
    };
  }

}