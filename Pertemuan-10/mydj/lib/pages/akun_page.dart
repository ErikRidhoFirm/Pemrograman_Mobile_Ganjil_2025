import 'package:flutter/material.dart';
import 'package:mydj/components/password_field.dart';
import 'dart:io'; // untuk exit

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
            SizedBox(height: 20),
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
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Perubahan sandi disimpan')),
                  );
                },
                child: Text('Simpan', style: TextStyle(color: Colors.white)),
              ),
            ),

            SizedBox(height: 20),
            Text(
              "Keluar",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(thickness: 2),
            SizedBox(height: 10),
            // ===== Tombol Keluar dari Aplikasi =====
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
                  exit(0);
                },
                child: Text(
                  'Keluar dari Aplikasi',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
