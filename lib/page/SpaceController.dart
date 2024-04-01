import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SpaceController extends GetxController{
  final auth = FirebaseAuth.instance;
  void onInit() {
    super.onInit();
     splaceHandle();
  }
  void splaceHandle()async{
await Future.delayed(
  Duration(seconds: 3),
);
if (auth.currentUser ==null) {
  Get.offAllNamed("/authPage");
  
}else{
Get.offAllNamed("/homepage");
print(auth.currentUser!.email);
}
print("hello");
  }

  }

//  Future <void>splaceHandle()async{
//     Future.delayed(Duration(seconds: 3),(){
//       Get.offAllNamed("/homepage");
//     });}