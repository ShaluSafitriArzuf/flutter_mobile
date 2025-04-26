import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PageDetailBerita extends StatelessWidget {
  final Map<String, dynamic> itemBerita;

  const PageDetailBerita(this.itemBerita,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemBerita['judul']),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  itemBerita['gambar'],
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Text(
                itemBerita['judul'],
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                itemBerita['tanggal'],
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RatingBarIndicator(
                    rating: itemBerita['rating'],
                    itemBuilder: (context, index) =>
                        Icon(Icons.star, color: Colors.yellow),
                    itemCount: 5,
                    itemSize: 25,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                itemBerita['isi'],
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}