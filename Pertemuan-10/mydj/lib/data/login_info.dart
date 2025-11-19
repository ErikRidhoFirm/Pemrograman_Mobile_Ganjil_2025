import 'package:shared_preferences/shared_preferences.dart';

class LoginInfo {
  // Property
  String username;
  String password;
  bool isLoggedIn;

  // Constructor dengan named-parameter (Parameter bernama)
  LoginInfo({this.username = '', this.password = '', this.isLoggedIn = false});

  // Method untuk menyimpan nilai-nilai properti class ini ke SharedPreferences
  Future<void> saveToSharedPreferences() async {
    //Buat instance dari SharedPreferences
    SharedPreferences sp = await SharedPreferences.getInstance();

    // Simpan semua properti ke SP
    sp.setString('username', username);
    sp.setString('password', password);
    sp.setBool('isLoggedIn', isLoggedIn);
  }

  // Membaca dari shared preferences
  static Future<LoginInfo> loadFromSharedPreferences() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String username = sp.getString('username') ?? ''; // ternary operator
    String password = sp.getString('password') ?? '';
    bool isLoggedIn = sp.getBool('isLoggedIn') ?? false;

    LoginInfo loaded = LoginInfo(
      username: username,
      password: password,
      isLoggedIn: isLoggedIn,
    );
    return loaded;
  }
}
