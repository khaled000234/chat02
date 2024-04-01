import 'package:chat02/final/String.dart';
import 'package:chat02/final/images.dart';
import 'package:chat02/page/pagesecond/welcomeHead.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 10),
             WelcomHea(),
              SizedBox(height: 10),
              Text(AppString.appName,
              style:Theme.of(context).textTheme.headlineLarge
              ?.copyWith(color: Theme.of(context).colorScheme.secondary,)
            ),
            SizedBox(height: 10,),
            Row(children: [
              SvgPicture.asset(AssetsImage1.appIcon,width: 50,height: 50,)
            ],)
          
          ],),
        ),
      ),
    );
  }
}