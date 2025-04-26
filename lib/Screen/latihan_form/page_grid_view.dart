import 'package:flutter/material.dart';
import 'package:project1_mi2b/Screen/latihan_form/page_detail_dosen.dart';

class PageGridView extends StatefulWidget {
  const PageGridView({super.key});

  @override
  State<PageGridView> createState() => _PageGridViewState();
}

class _PageGridViewState extends State<PageGridView> {
  // data list dosen
  List<Map<String, dynamic>> ListDosen = [
    {"NIDN": "30098009", "gambar": "gambar/dosen1.jpg", "nama": "Thv","email":"thv@gmail.com"},
    {"NIDN": "300980010", "gambar": "gambar/dosen2.jpg", "nama": "jimin","email":"jmn@gmail.com"},
    {"NIDN": "300980011", "gambar": "gambar/dosen3.jpg", "nama": "suga","email":"agust@gmail.com"},
    {"NIDN": "300980012", "gambar": "gambar/dosen4.jpg", "nama": "seokjin","email":"jin@gmail.com"},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: ListDosen.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.7
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => PageDetailDosen(ListDosen[index])));
              },
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      child: Image.asset(
                        ListDosen[index]["gambar"],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Colors.black)
                    ),
                    child: Column(
                      children: [
                        Text(ListDosen[index]["NIDN"],style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        Text(ListDosen[index]["nama"],style: TextStyle( fontSize: 16),),
                        Text(ListDosen[index]["email"],style: TextStyle( fontSize: 16),),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
