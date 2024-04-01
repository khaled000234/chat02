import 'package:chat02/final/images.dart';
import 'package:chat02/page/pagesecond/ProfileController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


 class LoginUserInfo extends StatelessWidget {
  const LoginUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController =Get.put(ProfileController());
    return  Scaffold(
 body: Padding(
        padding: const  EdgeInsets.all(10),
        
        child: Column(
          children: [
             Container(
             padding:  EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                              children: [
                                        SizedBox(
                                  height: 50, // Added to provide fixed height
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("asset/icon/boy.jpg", width: 50, height: 50),
                                    ],
                                  ),
                                ),
                                        SizedBox(height: 20,),
                                        Row(
                                          mainAxisAlignment:MainAxisAlignment.center,
                                          children: [
                                           Obx(() =>  Text(
                                              profileController.currentUser.value.email! ,
                                              style: Theme.of(context).textTheme.bodyLarge,
                                            ))
                                          ],
                                        ),
                                         Row(
                                          mainAxisAlignment:MainAxisAlignment.center,
                                          children: [
                                           Obx(() =>  Text(
                                              profileController.currentUser.value.name!
                                               == null?"user"
                                               : profileController.currentUser.value.name!,
                                              style: Theme.of(context).textTheme.bodyLarge,
                                            ))
                                          ],
                                        ),
                                        SizedBox(height: 20,),
                                        Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(15),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15),
                                               // color: Theme.of(context).colorScheme.background,
                                              ),
                                              child: Row(children: [
                                                Icon(Icons.phone),
                                                SizedBox(width: 8,),
                                                Text("Call")
                                              ],),
                                            ),
                                       
                                            Container(
                                              padding: EdgeInsets.all(15),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15),
                                                color: Theme.of(context).colorScheme.background,
                                              ),
                                              child: Row(children: [
                                              SvgPicture.asset(AssetsImage1.telephone,width: 25,color: Color(0xFFFFFFFF),),
                                                SizedBox(width: 8,),
                                                Text("phone",style: TextStyle(color: Colors.green),)
                                              ],),
                                            ),
                                        
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15),
                                                color: Theme.of(context).colorScheme.background,
                                              ),
                                              child: Row(children: [
                                               SvgPicture.asset(AssetsImage1.videoSVG,width: 25,color: Color(0xFFFF0000),),
                                                SizedBox(width: 8,),
                                                Text("video",style: TextStyle(color: Colors.orange),)
                                              ],),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  )
                                ],
                              ),
                            ),
                           
                      ],
                    ),
 ),
    );
  }
}