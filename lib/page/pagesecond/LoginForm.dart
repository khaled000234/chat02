import 'package:chat02/Auth/AuthController.dart';
import 'package:chat02/page/pagesecond/Pbottom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    AuthController authController = Get.put(AuthController());
    return Column(
      children: [
           SizedBox(height: 35),
        TextField(
          controller: email,
         decoration: const InputDecoration(
          hintText: "EMAIL"
          ,prefixIcon: Icon(Icons.email)
          ),
        ),
        SizedBox(height: 35),
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
              authController.login(email.text, password.text);
            },),
          ],
        )
        )
      ],
    );
  }
}

// Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Pbottom(BName:"Login1",ontap: (){
//              // Get.offAllNamed("/homepage");
//              authController .login(email.text, password.text);
//             },),
//           ],
//         )
//       ],