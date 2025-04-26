import 'package:flutter/material.dart';

class Pagesearchingliststate extends StatefulWidget {
  const Pagesearchingliststate({super.key});

  @override
  State<Pagesearchingliststate> createState() => _PagesearchingliststateState();
}

class _PagesearchingliststateState extends State<Pagesearchingliststate> {
  // Deklarasi item list
  List<String> listDevice = [
    "Iphone",
    "Xiomi",
    "Oppo",
    "Vivo",
    "Motorola",
    "Apple",
    "Samsung",
    "Realme",
    "iPad",
    "iWatch",
    "Tablet",
  ];

  bool isCari = true; // Status pencarian aktif atau tidak
  List<String> filterData = []; // List filter
  TextEditingController txtCari = TextEditingController(); // Searching field

  _PagesearchingliststateState() {
    txtCari.addListener(() {
      setState(() {
        if (txtCari.text.isEmpty) {
          isCari = true;
          filterData = [];
        } else {
          isCari = false;
          filterData = listDevice
              .where((device) =>
              device.toLowerCase().contains(txtCari.text.toLowerCase()))
              .toList();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Searching List"),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: txtCari,
              decoration: InputDecoration(
                hintText: "Searching",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.pink.withOpacity(0.1),
                filled: true,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: isCari ? listDevice.length : filterData.length,
                itemBuilder: (context, index) {
                  final item = isCari ? listDevice[index] : filterData[index];
                  return ListTile(title: Text(item));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}