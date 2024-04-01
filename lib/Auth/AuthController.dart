

import 'package:chat02/mode/Usermodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
  final auth = FirebaseAuth.instance;
  final db= FirebaseFirestore.instance;
  RxBool isLoading =false.obs;
  Future<void>login (String email,String password)async{
    isLoading.value=true;
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      Get.offAllNamed("/homepage");
      isLoading.value=true;
     }  on FirebaseAuthException catch(e){
        if (e.code == 'weak - password') {
          print("fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff");

          
        }else if(e.code =='email alrerty too weak '){
          print("the acount alerdy exist for the email");
        }
      }catch(e){
        print(e);
      }
       isLoading.value=false;
  }
  Future<void>createUser(String email,String password,String name) async{
    isLoading.value=true;
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
     // print("Acount create ");
      await initUser(email,name);
       Get.offAllNamed("/authPage");
      }  on FirebaseAuthException catch(e){
        if (e.code == 'weak - password') {
          print("fff");

          
        }else if(e.code =='email alrerty too weak '){
          print("the acount alerdy exist for the email");
        }
      }catch(e){
        print(e);
      }
 isLoading.value=false;
  }
Future<void> logoutUser()async{
  await auth.signOut();
  Get.offAllNamed("/authPage");
}
Future<void>initUser(String email,String name)async{
  var newUser =UserModel(
    email: email,
    name: name,
    id: auth.currentUser!.uid,

  );
 try{
   await db.collection("users")
  .doc(auth.currentUser!.uid)
  .set(newUser.toJson());
} catch(ex){
  print(ex);
}
 }
}