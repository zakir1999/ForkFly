import 'package:flutter/material.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  final GlobalKey<FormState>_formkey=GlobalKey<FormState>();
  TextEditingController usernamecontroller =new TextEditingController();
  TextEditingController userpasswordcontroller =new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFededeb),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
              padding: EdgeInsets.only(top: 45.0, left: 20.0, right: 20.0),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 53, 51, 51), Color(0xFFff5c30)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.vertical(top: Radius.elliptical(MediaQuery.of(context).size.width,110.0))
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0,right: 30.0,top: 60.0),
              child: Form(
                key: _formkey,
                child:Column(
                  children: [

                  ],
                ) ,
              ),
            )
          ],
        ),
      ),
    );
  }
}
