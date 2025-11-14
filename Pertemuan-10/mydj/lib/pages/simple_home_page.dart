import 'package:flutter/material.dart';
import 'package:mydj/pages/lihat_jurnal_page.dart';
import 'package:mydj/pages/buat_jurnal_page.dart';
import 'package:mydj/pages/akun_page.dart';
import 'package:mydj/pages/tentang_aplikasi_page.dart';

class SimpleHomePage extends StatefulWidget
{
  const SimpleHomePage({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState()
  {
    return _SimpleHomePageState();  // Tidak masalah bila saat ini error karena memang class _SimpleHomePageState belum kita buat.
  }
}

class _SimpleHomePageState extends State<SimpleHomePage>
{
  void _openLihatJurnalPage(BuildContext context)
  {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => LihatJurnalPage(title: 'Lihat Jurnal') // Halaman kedua (Widget)
      ),
    );
  }
  void _openBuatJurnalPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BuatJurnalPage(),
      ),
    );
  }
  void _openTentangAplikasiPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TentangAplikasiPage(title: 'Tentang Aplikasi'),
      ),
    );
  }
  void _openAkunPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AkunPage(title: 'Akun'),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/images/logo-kemendikbud.png',
                  width: 150,
                  height: 150
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () => {_openLihatJurnalPage(context)}, child:
                  Text('Lihat Jurnal')),
                  SizedBox(width: 20),
                  ElevatedButton(onPressed: () => {_openBuatJurnalPage(context)}, child:
                  Text('Buat Jurnal')),
                ],
              ),
              const SizedBox(height: 20), // Memberi jarak antar baris
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () => {_openAkunPage(context)}, child:
                  const Text('Akun')),
                  const SizedBox(width: 20),
                  ElevatedButton(onPressed: () => {_openTentangAplikasiPage(context)}, child:
                  const Text('Tentang Aplikasi')),
                ],
              )
            ],
          ),
        )
    );
  }
}