import 'package:flutter/material.dart';
import 'package:project1_mi2b/Screen/latihan_form/page_dosen.dart';
import 'package:project1_mi2b/Screen/latihan_form/page_tab_dosen.dart';
import 'package:project1_mi2b/Screen/nav_bar/page_search_list.dart';
import 'package:project1_mi2b/Screen/nav_bar/page_tab_bar.dart';
import 'package:project1_mi2b/Screen/page_cache_image.dart';
import 'package:project1_mi2b/Screen/page_dua.dart';
import 'package:project1_mi2b/Screen/page_empat.dart';
import 'package:project1_mi2b/Screen/page_gambar.dart';
import 'package:project1_mi2b/Screen/page_list_data.dart';
import 'package:project1_mi2b/Screen/page_notification.dart';



import 'package:project1_mi2b/Screen/page_satu.dart';
import 'package:project1_mi2b/Screen/page_simple_login.dart';
import 'package:project1_mi2b/Screen/page_tiga.dart';
import 'package:project1_mi2b/Screen/page_url_image.dart';
import 'package:project1_mi2b/map/Map_rs_page.dart';
import 'package:project1_mi2b/map/map_multi_markers_page.dart';
import 'package:project1_mi2b/map/map_page.dart';
import 'package:project1_mi2b/map/map_page_kost.dart';void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PageOne(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//ketik st
class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appBar : properti dari sebuah widget
        //AppBar : widget

        title: Text(
          'Aplikasi Pertama',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Selamat Datang di Flutter App pertama Mi2B Shalu Safitri Arzuf"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                //ini untuk pindah ke page 1
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageSatu()
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                //ini untuk pindah page
                color: Colors.pink,
                child: Text('Page 1',
                  style: TextStyle(fontSize: 14, color: Colors.white ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageDua()
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                //ini untuk pindah page
                color: Colors.pink,
                child: Text('Page 2',
                  style: TextStyle(fontSize: 14, color: Colors.white ),
                ),
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageTiga()
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                //ini untuk pindah page
                color: Colors.pink,
                child: Text('Page 3',
                  style: TextStyle(fontSize: 14, color: Colors.white ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageEmpat()
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                //ini untuk pindah page
                color: Colors.pink,
                child: Text('Page 4',
                  style: TextStyle(fontSize: 14, color: Colors.white ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageGambar()
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                //ini untuk pindah page
                color: Colors.pink,
                child: Text('Page Gambar',
                  style: TextStyle(fontSize: 14, color: Colors.white ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageUrlImage()
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                //ini untuk pindah page
                color: Colors.pink,
                child: Text('Page Url',
                  style: TextStyle(fontSize: 14, color: Colors.white ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageCacheImage()
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                //ini untuk pindah page
                color: Colors.pink,
                child: Text('Page Cache Image',
                  style: TextStyle(fontSize: 14, color: Colors.white ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageNotification()
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                //ini untuk pindah page
                color: Colors.pink,
                child: Text('Page Toast',
                  style: TextStyle(fontSize: 14, color: Colors.white ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageListData()
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                //ini untuk pindah page
                color: Colors.pink,
                child: Text('Page List Data',
                  style: TextStyle(fontSize: 14, color: Colors.white ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageSimpleLogin()
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                //ini untuk pindah page
                color: Colors.pink,
                child: Text('Page Login',
                  style: TextStyle(fontSize: 14, color: Colors.white ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageTabBar()
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                //ini untuk pindah page
                color: Colors.pink,
                child: Text('Tab Bar',
                  style: TextStyle(fontSize: 14, color: Colors.white ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageTabDosen()
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                //ini untuk pindah page
                color: Colors.pink,
                child: Text('Dosen',
                  style: TextStyle(fontSize: 14, color: Colors.white ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => Pagesearchingliststate()
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                //ini untuk pindah page
                color: Colors.pink,
                child: Text('Search',
                  style: TextStyle(fontSize: 14, color: Colors.white ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => MapPage()
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                //ini untuk pindah page
                color: Colors.pink,
                child: Text('Map',
                  style: TextStyle(fontSize: 14, color: Colors.white ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => MapPageKost()
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                //ini untuk pindah page
                color: Colors.pink,
                child: Text('Map Kost',
                  style: TextStyle(fontSize: 14, color: Colors.white ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => MapMultiMarkersPage()
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                //ini untuk pindah page
                color: Colors.pink,
                child: Text('Map Hotel',
                  style: TextStyle(fontSize: 14, color: Colors.white ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => MapRsPage()
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                //ini untuk pindah page
                color: Colors.pink,
                child: Text('Map Rumah Sakit',
                  style: TextStyle(fontSize: 14, color: Colors.white ),
                ),
              ),
            ),
          ],
        ),

        //child :  cuma bisa nampung 1 widget
        //children : bisa nampung beberapa widget
      ),
    );
  }
}