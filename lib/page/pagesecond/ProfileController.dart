import 'package:chat02/mode/Usermodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{
  final auth =FirebaseAuth.instance;
  final db= FirebaseFirestore.instance;
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

}