import 'package:flutter/material.dart';
import 'package:mydj/components/password_field.dart';
import 'package:mydj/pages/simple_home_page.dart';

class LoginPage extends StatefulWidget {
  final String title = 'MyDJ - Welcome';

  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  String namaPengguna = ''; // <-- Nantinya digunakan untuk penyimpan username
  String sandi = ''; // <-- Yang ini digunakan untuk menyimpan password

  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  void login() {
    namaPengguna = userController.text;
    sandi = passController.text;

    if (namaPengguna == 'guru' && sandi == 'guru') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SimpleHomePage(title: 'Beranda'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/login_icon.png',
                  width: 150,
                ), // <-- Menampilkan gambar login
                // Untuk Username
                SizedBox(height: 20),
                Text("Nama Pengguna"),
                SizedBox(height: 10),

                TextField(
                  controller: userController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Masukkan nama pengguna',
                  ),
                ),

                SizedBox(height: 20),
                Text("Sandi"),
                SizedBox(height: 10),

                PasswordField(controller: passController),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple[400],
                      padding: EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      login();
                    },
                    child: Text('Login', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
