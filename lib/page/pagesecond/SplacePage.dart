import 'package:chat02/final/images.dart';
import 'package:chat02/page/SpaceController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplacePage extends StatelessWidget {
  const SplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    SpaceController spaceController=Get.put(SpaceController());
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Splace Screen",style: Theme.of(context).textTheme.headlineSmall,)
      // ),
      body: Center(
        child: SvgPicture.asset(AssetsImage1.appIcon),
      ),
    );
  }
}