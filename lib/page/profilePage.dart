import 'package:chat02/Auth/AuthController.dart';
import 'package:chat02/final/color.dart';
import 'package:chat02/final/images.dart';
import 'package:chat02/page/pagesecond/LoginuserInfo.dart';
import 'package:chat02/page/pagesecond/ProfileController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController =Get.put(AuthController());
    ProfileController profileController=Get.put(ProfileController());
   
    return Scaffold(
      appBar: AppBar(title: Text("profile"),
      actions: [
        IconButton(onPressed: (){
          Get.toNamed("/updateProfile");
        }, icon: Icon(Icons.edit)),
         IconButton(onPressed: (){
       authController.logoutUser();
        }, icon: Icon(Icons.close))
      ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(2),
        
        child: SingleChildScrollView (
          child: Column(
            children: [
               
                             Spacer(),
                            //  LoginUserInfo(),
                             
                        ],
                      ),
        ),
                  )
                
              );
            
          
        
      
    
  }
}


// // Center(
                              //   child: ElevatedButton(onPressed: (){
                              //     authController.logoutUser();
                              //   }, child: Text("logout")),
                              // )