import 'package:flutter/material.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page Tiga'),
          backgroundColor: Colors.pink,
        ),
        body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                        Icons.h_mobiledata,
                        size : 35,
                        color: Colors.purple
                    ),
                    Text("Mobile")
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                        Icons.phone,
                        size : 35,
                        color: Colors.green
                    ),
                    Text("Phone")
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                        Icons.spa,
                        size : 35,
                        color: Colors.red
                    ),
                    Text("Relax")
                  ],
                ),
              ],
            )
        )
    );
    throw UnimplementedError();
  }
}