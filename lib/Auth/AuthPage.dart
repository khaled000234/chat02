import 'package:chat02/final/images.dart';
import 'package:chat02/page/pagesecond/AuthPageBody.dart';
import 'package:chat02/page/pagesecond/welcomeHead.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auth page"),
      
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(20),
          child:  SingleChildScrollView(
            child: Column(
              children: [
              
              
              
      
      //  WelcomHea(),
              Center(child: Image.asset(AssetsImage1.appIconSVG,width: 100,height: 100,),),

                SizedBox(height: 20,),
                AuthPageBody()
              ],
            ),
          ),
        ),
      ),
    );
  }
}