import 'dart:ffi';

import 'package:chat02/final/ChatModel.dart';
import 'package:chat02/page/pagesecond/ProfileController.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class ChatController extends GetxController{
  final auth =FirebaseAuth.instance;
  final db= FirebaseFirestore.instance;
  RxBool isLoading=false.obs;
  var uuid=Uuid();
  ProfileController controller=Get.put(ProfileController());
  String getRoomId(String targetUserId){
String currentUserId= auth.currentUser!.uid;
if (currentUserId[0].codeUnitAt(0)>targetUserId[0].codeUnitAt(0)) {
  return currentUserId+ targetUserId;
}else{
  return targetUserId+currentUserId;
}


  }
  Future <void> sendMessage(String targetUserId,String message)async{
   isLoading.value=true;
   String chatId=uuid.v6();
    String roomId =getRoomId(targetUserId);
    var newChat =ChatModel(
      id: chatId,
      message: message,
      senderId: auth.currentUser!.uid,
      receiverId: targetUserId,
      senderName: controller.currentUser.value.name,
      timestamp: DateTime.now().toString(),
      // senderName:controller.currentUser.value.name ,
    );
    try {
       await db
       .collection("Chats")
       .doc(roomId)
       .collection("messages")
       .doc(chatId)
       .set(newChat
       .toJson());
    } catch (e) {
      print(e);
    } 
    isLoading.value=false;
  }




Stream <List<ChatModel>>getMessage(String targetUserId){
  String roomId =getRoomId(targetUserId);
  return db 
  .collection("Chats")
  .doc(roomId).
  collection("messages")
  .orderBy("timestamp",descending: true)
  .snapshots()
  .map((snapshot)
   => snapshot.docs
  .map((doc) =>ChatModel.fromJson(doc.data()) )
  .toList(),
  );
}



}
