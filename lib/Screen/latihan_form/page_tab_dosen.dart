import 'package:flutter/material.dart';
import 'package:project1_mi2b/Screen/latihan_form/page_dosen.dart';
import 'package:project1_mi2b/Screen/latihan_form/page_grid_view.dart';
import 'package:project1_mi2b/Screen/latihan_form/page_list_view.dart';

class PageTabDosen extends StatefulWidget {
  const PageTabDosen({super.key});

  @override
  State<PageTabDosen> createState() => _PageTabDosenState();
}

class _PageTabDosenState extends State<PageTabDosen> with SingleTickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Nav Bar",style: TextStyle(color: Colors.white)),
      ),
      body: TabBarView(controller: tabController,children: [PageDosen(),PageGridView(),PageListView()]),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(controller: tabController,tabs: [
          Tab(text: 'Form Dosen',icon: Icon(Icons.input),),
          Tab(text: 'Grid View',icon: Icon(Icons.grid_on),),
          Tab(text: 'List View',icon: Icon(Icons.list),),
        ]),
      ),
    );
  }
}
