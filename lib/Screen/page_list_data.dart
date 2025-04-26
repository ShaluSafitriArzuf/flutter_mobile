import 'package:flutter/material.dart';
import 'package:project1_mi2b/Screen/page_get_data.dart';

class PageListData extends StatelessWidget{
  const PageListData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Page List Data"),
      ),
      body: ListView.builder(
        itemCount: 10,//total dari item
        itemBuilder: (context, index){

          return ListTile(
            title: Text("Judul Berita $index"),
            subtitle: Text("Detail Berita $index"),
            onTap: (){
              //proses passing data
              //buat satu file untuk menampung data
              Navigator.push(context, MaterialPageRoute(builder: (context)
              => PageGetData(index)
              ));
            },
          );
        }),
    );
  }
}