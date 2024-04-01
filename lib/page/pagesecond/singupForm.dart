import 'package:chat02/Auth/AuthController.dart';
import 'package:chat02/page/pagesecond/Pbottom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingupForm extends StatelessWidget {
  const SingupForm({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    TextEditingController name = TextEditingController();
     TextEditingController email = TextEditingController();
      TextEditingController password = TextEditingController();
    
    return Column(
      children: [
           SizedBox(height: 30),
        TextField(
          controller: name,
         decoration:const InputDecoration(
          hintText: "NAME"
          ,prefixIcon: Icon(
            Icons.supervised_user_circle_rounded)
          ),
        ),
        SizedBox(height: 30),
          TextField(
            controller: email,
         decoration: const InputDecoration(
          hintText: "EMAIL"
          ,prefixIcon: Icon(Icons.email)
          ),
        ),
        SizedBox(height: 30),
           TextField(
            controller: password,
         decoration: const  InputDecoration(
          hintText: "PASS"
          ,prefixIcon: Icon(Icons.password)
          ),
        ),
        SizedBox(height: 60),
        Obx(() => authController.isLoading.value ?
        CircularProgressIndicator():
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Pbottom(BName:"Singin",ontap: (){
              authController.createUser(email.text, password.text,name.text);
            },),
          ],
        )
        )
      ],
    );
  }
}