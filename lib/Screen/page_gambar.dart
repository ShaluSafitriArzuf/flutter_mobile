import 'package:flutter/material.dart';

class PageGambar extends StatelessWidget {
  const PageGambar({super.key});

  //untuk image asset
  //buat direktori
  //masukin gambar dan rename yang simple namanya
  //update di pubspec.yaml
  //kita pub get dan pub upgrade

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.blueAccent,
       title: Text('Someone Special'),
     ),
     body: Center(
       child: Image.asset('gambar/sing.jpg'),
     ),
   );
  }

}