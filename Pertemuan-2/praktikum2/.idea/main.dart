import 'dart:io';

// Import untuk fungsi percobaan-6
import 'modul_lain.dart';

void main()
{
  print('halo, dart!');
  print('---------------');
  //1. Fungsi, Variabel, dan Tipe Data
  fungsiPercobaan1();
  //2. Operator
  fungsiPercobaan2();
  //3. Input Pengguna
  fungsiPercobaan3();
  //4. Pencabangan
  fungsiPercobaan4(80);
  //5. Perulangan
  fungsiPercobaan5('Erik', 5);
  //6. Panggil fungsi dari file lain
  fungsiPercobaan6();   // <-- INI FUNGSI YANG BERADA DI FILE INI
  //7. List
  fungsiPercobaanList();
  //8. Map
  fungsiPercobaanMap();
  //8. Set
  fungsiPercobaanSet();
}

// 1. Fungsi, variabel, dan tipe data
void fungsiPercobaan1()
{
  String nama = 'Erik Ridho. F';
  int umur    = 21;
  double ipk  = 3.67;
  bool lulus  = true;

// Print
  print('Nama         : $nama');
  print('Umur         : $umur');
  print('IPK          : $ipk');
  print('Sudah Lulus? : $lulus');
  print('---------------');
}

// 2. Operator
void fungsiPercobaan2()
{
  int a = 10;
  int b = 3;
// print perhitungan dengan operator
  print('Penjumlahan  : ${a + b}');
  print('Pembagian    : ${a / b}');
  print('Modulus      : ${a % b}');
  print('Logika       : ${(a > b ) && (b < 5)}');
  print('----------------');
}

// 3. Input Pengguna
// Import untuk fungsi percobaan-3, letakkan dibaris paling diatas dari file
void fungsiPercobaan3()
{
  stdout.write('Masukkan nama: ');
  String? nama = stdin.readLineSync();

  print('Halo, $nama!');
  print('-----------------');
}

// 4. Pencabangan
void fungsiPercobaan4(double nilai)
{
  String status;
  if (nilai >= 75)
    {
      status = 'Lulus';
    }
  else
    {
      status = 'Mengulang';
    }
  print('Nilai  : $nilai');
  print('Status : $status');
  print('---------------');
}

// 5. Perulangan
void fungsiPercobaan5(String nama, double jumlah)
{
  //perulangan dengan for
  for(int i = 0; i < jumlah; i++)
    {
      print('For ke-$i: $nama');
    }
  print('--------------');

  // Perulangan dengan while
  int j = 0;
  while (j < jumlah)
    {
      print('While ke-$j: $nama');
      j++;
    }

    print('----------------');
}