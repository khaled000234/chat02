import 'dart:ffi';
import 'dart:io';

import 'package:chat02/mode/Usermodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{
  final auth =FirebaseAuth.instance;
  final db= FirebaseFirestore.instance;
  final store =FirebaseStorage.instance;
  RxBool isLoading=false.obs;
 // Rx<UserModel> currentUser =UserModel().obs;
 
  Rx<UserModel>currentUser = UserModel().obs;
  void onInit()async{
    super.onInit();
    await getUserDeatails();
  }
  Future<void> getUserDeatails()async {
    await db.collection("users")
    .doc(auth.currentUser!.uid)
    .get().then((value) => {
      currentUser.value= UserModel.fromJson(
        value.data()!,
    ),
    });
  }
    Future<void> updateProfile(

      String imageUrl,
      String name,
      String about,
      String number,
    )async{
    isLoading.value=true;
    try {
       final imageLink=await uploadFileToFirebase(imageUrl);
       final updatUse =UserModel(
      name: name,
      about: about,
      profileImage: imageLink,
      phoneNumber: number,

    );
    await db.collection("users")
    .doc(auth.currentUser!.uid).set(updatUse.toJson());
    } catch (ex) {
      print(ex);
    }
   
   
    isLoading.value=false;
    
    }
    Future<String> uploadFileToFirebase(String imagePath)async{
          final path ="files/${imagePath}";
    final file =File(imagePath!);
            if (imagePath !="") {
              try {
final ref=store.ref().child(path).putFile(file);
final UploadTask =await ref.whenComplete(() => {

});
final  downloadImageUrl =await UploadTask.ref.getDownloadURL();

print(downloadImageUrl);
return downloadImageUrl;
} catch (ex) {
   print(ex);
  return "";
   
}
            } return "";

    }
  }

