import 'package:chat02/final/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class tezt extends StatefulWidget {
  const tezt({super.key});

  @override
  State<tezt> createState() => _teztState();
}

class _teztState extends State<tezt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SvgPicture.asset(AssetsImage1.appI)
          
        ],
        
      ),
    );
  }
}