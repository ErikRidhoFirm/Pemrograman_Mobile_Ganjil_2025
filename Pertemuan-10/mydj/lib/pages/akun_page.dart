import 'package:flutter/material.dart';
import 'package:mydj/components/password_field.dart';

class AkunPage extends StatefulWidget {
  const AkunPage({super.key, required this.title});
  final String title;

  @override
  State<AkunPage> createState() {
    return _AkunPageState();
  }
}

class _AkunPageState extends State<AkunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ganti Sandi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(thickness: 2),
            SizedBox(height: 10),
            Text('Sandi saat ini'),
            SizedBox(height: 10),
            // -------------------
            PasswordField(), // <- Tambahlan disini
            // -------------------
            SizedBox(height: 10),
            Text('Sandi baru'),
            SizedBox(height: 10),
            // -------------------
            PasswordField(), // <- Tambahlan disini
            // -------------------
            SizedBox(height: 10),
            Text('Konfirmasi Sandi Baru'),
            SizedBox(height: 10),
            // -------------------
            PasswordField(), // <- Tambahlan disini
            // -------------------

            SizedBox(
              width: double.infinity, // Lebar sizedbox akan maksimal.
              child: ElevatedButton(
                // ElevatedButton sebagai child dari SizedBox. Lebarnya akan mengikuti lebar parentnya.
                onPressed: () => {
                  _savePassword(context),
                }, // <-- panggil fungsi yang kita buat tadi.
                child: Text('Simpan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
