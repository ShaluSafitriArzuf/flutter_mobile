import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:project1_mi2b/Screen/page_get_login.dart';



class PageSimpleLogin extends StatefulWidget {
  const PageSimpleLogin({super.key});

  @override
  State<PageSimpleLogin> createState() => _PageSimpleLoginState();
}

class _PageSimpleLoginState extends State<PageSimpleLogin> {
  //controller
  TextEditingController etUsername = new TextEditingController();
  TextEditingController etPassword = new TextEditingController();

  //variable untuk menampung data
  String nUsername = "";
  String nPassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Form Login'),
      ),
      body: Form(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Form Login User',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold),
                )
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: etUsername, //proses get data dari controller
              decoration: InputDecoration(hintText: 'Input Username'),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: etPassword, //proses get data dari controller
              obscureText: true, //biar password tidak kelihatan
              decoration: InputDecoration(hintText: 'Input Password'),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                //proses untuk menampilkan data dari widget
                //proses do background
                setState(() {
                  nUsername = etUsername.text; //berfungsi mengambil dari widget
                  nPassword = etPassword.text;

                  showToast(
                    "Username: $nUsername\nPassword: $nPassword",
                    context: context,
                    animation: StyledToastAnimation.fade,
                    reverseAnimation: StyledToastAnimation.fade,
                    position: StyledToastPosition.bottom,
                    duration: Duration(seconds: 3),
                    backgroundColor: Colors.black54,
                    textStyle: TextStyle(color: Colors.white),
                    borderRadius: BorderRadius.circular(8.0),
                  );

                  // Tampilkan SnackBar



                  //print data
                  print("username : " + nUsername + " pass : " + nPassword);
                  //TASK :
                  //1 tampilkan username dan password kedalam bentuk toast
                  //2 pindah ke page halaman selanjutnya dan menampilkan atau
                  //passing data dari username dan password

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageGetLogin(nUsername, nPassword)),
                  );

                });
              },
              color: Colors.pink,
              textColor: Colors.white,
              child: Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}