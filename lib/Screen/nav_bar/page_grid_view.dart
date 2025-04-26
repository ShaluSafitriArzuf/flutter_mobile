import 'package:flutter/material.dart';
import 'package:project1_mi2b/Screen/nav_bar/page_detail_movie.dart';

class PageGridView extends StatefulWidget {
  const PageGridView({super.key});

  @override
  State<PageGridView> createState() => _PageGridViewState();
}

class _PageGridViewState extends State<PageGridView> {
  // data list movie
  List<Map<String, dynamic>> ListMovie = [
    {"judul": "Ciao Alberto", "gambar": "gambar/movie1.jpg", "harga": 45000},
    {"judul": "The Simpsons", "gambar": "gambar/movie2.png", "harga": 57000},
    {"judul": "Jungle Cruise", "gambar": "gambar/movie3.jpg", "harga": 65000},
    {"judul": "Home Alone", "gambar": "gambar/movie4.jpg", "harga": 70000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: ListMovie.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.7
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => PageDetailMovie(ListMovie[index])));
              },
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      child: Image.asset(
                        ListMovie[index]["gambar"],
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
                        Text(ListMovie[index]["judul"],style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        Text("Rp.${ListMovie[index]["harga"]}"),
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
