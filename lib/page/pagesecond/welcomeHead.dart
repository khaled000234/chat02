import 'package:chat02/final/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomHea extends StatelessWidget {
  const WelcomHea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
       Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Image.asset(AssetsImage1.appI, width: 100,height: 100,
                // color: Theme.of(context).colorScheme.onBackground
                 ),
                        // SvgPicture.asset(AssetsImage1.appIconSVG,
                        //  ,
                       //  ),
                ],
              ),
    ],);
  }
}