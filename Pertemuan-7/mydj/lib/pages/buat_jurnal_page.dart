import 'package:flutter/material.dart';
import 'package:mydj/data/jurnal.dart';
import 'package:provider/provider.dart';
import 'package:mydj/data/data_provider.dart';

class BuatJurnalPage extends StatefulWidget
{
  final String title = 'Buat Jurnal';
  const BuatJurnalPage({super.key});
  @override
  State<StatefulWidget> createState()
  {
    return _BuatJurnalPageState();
  }
}

class _BuatJurnalPageState extends State<BuatJurnalPage> {

  String kelas = '';
  String mapel = '';
  int jamKe = 0;
  String tujuanPembelajaran = '';
  String materiTopikPembelajaran = '';
  String kegiatanPembelajaran = '';
  String dimensiProfilPelajarPancasila = '';

  void _saveJurnal(BuildContext context)
  {
    Jurnal jurnal = Jurnal(
        kelas: kelas,
        mapel: mapel,
        jam: jamKe,
        tujuanPembelajaran: tujuanPembelajaran,
        materiTopikPembelajaran: materiTopikPembelajaran,
        kegiatanPembelajaran: kegiatanPembelajaran,
        dimensiProfilPelajarPancasila: dimensiProfilPelajarPancasila
    );
    DataProvider provider = context.read<DataProvider>();
    provider.addNew(jurnal);
  }

  Widget _textArea(String label, String hint, Function(String) onChanged)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        SizedBox(height: 10),
        TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: hint
            ),
            maxLines: 4,
            onChanged: onChanged,
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
        ),
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Kelas:'),
                      SizedBox(height: 10), // Jeda 10 jarak
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Masukkan Kelas',
                        ),
                        onChanged: (value) => {setState(() {
                          kelas = value;  // <-- Dengan begini, apapun teks yang diinputkan pengguna akan selalu di-update ke property 'kelas' pada class ini (_BuatJurnalPageState), yang kita definisikan diatas.
                        })},
                      ),

                      SizedBox(height: 10), // beri 10 unit jarak dari komponen di atasnya
                      Text('Nama Mapel'),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Masukkan Nama Mapel',
                        ),
                        onChanged: (value) => {setState(() {
                          mapel = value;
                        })},
                      ),

                      SizedBox(height: 10), // Beri 10 unit jarak dari komponen di atasnya
                      Text('Jam Ke-'),
                      SizedBox(height: 10),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(), // garis tepi
                          labelText: 'Pilih Jam',
                        ),
                        items: [
                          DropdownMenuItem(value: '1', child: Text('1')),
                          DropdownMenuItem(value: '2', child: Text('2')),
                          DropdownMenuItem(value: '3', child: Text('3')),
                          DropdownMenuItem(value: '4', child: Text('4')),
                          DropdownMenuItem(value: '5', child: Text('5')),
                          DropdownMenuItem(value: '6', child: Text('6')),
                          DropdownMenuItem(value: '7', child: Text('7')),
                          DropdownMenuItem(value: '8', child: Text('8')),
                        ],
                        onChanged: (value) => {setState(() {
                          jamKe = int.parse(value!);
                        })},
                      ),

                      SizedBox(height: 10),
                      _textArea('Tujuan Pembelajaran', 'Masukkan Tujuan Pembelajaran', (text)
                          {tujuanPembelajaran = text;}),

                      SizedBox(height: 10),
                      _textArea('Materi/Topik Pembelajaran', 'Masukkan Materi/Topik Pembelajaran', (text)
                          {materiTopikPembelajaran = text;}),

                      SizedBox(height: 10),
                      _textArea('Kegiatan Pembelajaran', 'Masukkan Kegiatan Pembelajaran', (text)
                          {kegiatanPembelajaran = text;}),

                      SizedBox(height: 10),
                      _textArea('Dimensi Profil Pelajar Pancasila', 'Tuliskan Dimensi Profil Pelajar Pancasila', (text)
                          {dimensiProfilPelajarPancasila = text;}),

                      SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity, // Lebar sizedbox akan maksimal.
                        child: ElevatedButton(  // ElevatedButton sebagai child dari SizedBox. Lebarnya akan mengikuti lebar parentnya.
                          onPressed: () => {_saveJurnal(context)},  // <-- panggil fungsi yang kita buat tadi.
                          child: Text('Simpan'),
                        ),
                      ),
                    ]
                ),
            )
        )
    );
  }
}