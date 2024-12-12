import 'package:flutter/material.dart';
import 'package:food/pages/forgotpassword.dart';
import 'package:food/pages/signup.dart';
import 'package:food/widget/widget_support.dart';
class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: SingleChildScrollView(
          reverse: true,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.5,
                decoration: const BoxDecoration(gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFff5c30),
                    Color(0xFFe74b1a)
                  ]
                )),
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40.0))),
                child:
                 const Text(""),),
              Container(
                //padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/4),
                margin: const EdgeInsets.only(top:30.0,left: 20,right: 20.0),
                child: Column(

                  children: [
                    Center(
                      child: Image.asset(
                        "images/foodlogo.png",
                      width: MediaQuery.of(context).size.width/2,fit: BoxFit.cover,),
                    ),
                    const SizedBox(height: 10.0,),
                    Material(
                      borderRadius: BorderRadius.circular(20.0),
                      elevation: 5.0,
                      child: Container(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height/2.5,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20.0)),
                        child: Column(
                          children: [
                            const SizedBox(height: 20.0,),
                            Text("Login",style: AppWidget.HeadlineTextFeildStyle(),),
                          TextField(

                            decoration: InputDecoration(hintText: 'Email',hintStyle: AppWidget.semiBoldTextFeildStyle(),prefixIcon: const Icon(Icons.email_outlined)),),
                            const SizedBox(height: 20.0,),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(hintText: 'Password',hintStyle: AppWidget.semiBoldTextFeildStyle(),prefixIcon: const Icon(Icons.password_outlined)),),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPassword()));
                              },
                              child: Container(
                                alignment: Alignment.topRight,
                                child: Text(
                                 "Forgot Password",style: AppWidget.semiBoldTextFeildStyle(),
                              ),),
                            ),
                            const SizedBox(height: 80,),
                            Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(20.0),
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                width: 200,
                                decoration: BoxDecoration(color: const Color(0xffff5722),borderRadius: BorderRadius.circular(20.0)),
                                child: const Center(
                                  child: Text(
                                    'Login',style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ),
                              ),
                            ),



                          ],
                        ),),
                    ),
                    const SizedBox(height: 20.0,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have a account?",style: AppWidget.semiBoldTextFeildStyle(),),
                          const SizedBox(width: 10.0,),
                          Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(5.0),
                            child: GestureDetector(

                                onTap: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const SignUp()));
                                },
                                child: Text("SignUp",style: AppWidget.semiBoldTextFeildStyle(),)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
