import 'package:flutter/cupertino.dart';
import 'package:mydj/data/jurnal.dart';
import 'package:mydj/data/login_info.dart';

class DataProvider extends ChangeNotifier
{
  final List<Jurnal> _jurnalTersimpan = [];

  void addNew(Jurnal jurnal)  // <-- Method untuk menambahkan entri jurnal
  {
    _jurnalTersimpan.add(jurnal);
    notifyListeners();
  }

  List<Jurnal> get jurnalTersimpan
  {
    return List.unmodifiable(_jurnalTersimpan); // <-- Getter untuk membaca daftar jurnal
  }

  // Simpan info lgoin ketika user klik button login di halaman LoginPage
  void saveLoginInfo(String username, String password) async
  {
    LoginInfo li = await LoginInfo.loadFromSharedPreferences();
    li.username = username;
    li.password = password;
    li.isLoggedIn = true;

    await li.saveToSharedPreferences();
  }
}