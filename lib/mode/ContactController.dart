
import 'package:chat02/mode/Usermodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ContractVontroller extends GetxController {

  final db = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;
  RxList <UserModel> userList= <UserModel>[].obs;
  RxBool isLoading=false.obs;
 


  void onInit()async{
    super.onInit();
    await getUserList();
  }

Future <void>getUserList()async{
  isLoading.value=true;
  try {
    userList.clear();
    await db.collection("users").get().then((value) => {
    userList.value =value.docs.map((e) => UserModel.fromJson(e.data())).toList(),
    });
  } catch (ex) {
    print(ex);
  
  }
  isLoading.value=false;
}
}