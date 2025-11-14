import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TentangAplikasiPage extends StatefulWidget {
  const TentangAplikasiPage({super.key, required this.title});
  final String title;

  @override
  State<TentangAplikasiPage> createState() {
    return _TentangAplikasiPageState();
  }
}

class _TentangAplikasiPageState extends State<TentangAplikasiPage> {

  final Uri _url = Uri.parse('https://github.com/ErikRidhoFirm');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
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
          crossAxisAlignment: CrossAxisAlignment.center,
          // 1. Hapus 'const' dari list children
          children: [
            const Text(
              'MyDJ',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w900,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 1),
            const Text(
              'Aplikasi Jurnal Harian Guru',
              style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 2),
            const Text(
              'Version: 0.1 (Beta)',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 2),
            const Text(
              'Dibuat oleh:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 4),
            const Text(
              'Erik Ridho Firmansyah',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 4),
            // 2. Hapus 'const' dari InkWell
            InkWell(
              onTap: _launchUrl,
              child: const Text(
                'https://github.com/ErikRidhoFirm',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blueAccent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
