import 'package:chat02/final/images.dart';
import 'package:chat02/mode/ChatController.dart';
import 'package:chat02/mode/ContactController.dart';
import 'package:chat02/page/chat/chatPage.dart';
import 'package:chat02/page/pagesecond/NewContactTitle.dart';
import 'package:chat02/page/pagesecond/chatTile.dart';
import 'package:chat02/page/pagesecond/contactSrech.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isSearchEnable=false.obs;
    ContractVontroller contractVontroller =Get.put(ContractVontroller());
    ChatController chatController=Get.put(ChatController());
    return Scaffold(
      appBar: AppBar(
        title: Text("select contact"),
        actions: [
        Obx(() =>   IconButton(onPressed: (){
             isSearchEnable.value =!isSearchEnable.value;
          }, icon:isSearchEnable.value?Icon(Icons. close):Icon(Icons.search)
          ))
        ],

      ),
      body:Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: [
          Obx(() => isSearchEnable.value ?ContactSearch() : SizedBox(),),
           SizedBox(height: 10,),
          NewContactTile(
            btnName: "New COntact",
             icon: Icons.person_add,
              ontap: (){}),
              SizedBox(height: 10,),
                NewContactTile(
            btnName: "New Group",
             icon: Icons.group,
              ontap: (){}),
              SizedBox(height: 10),
              Row(
                children: [
                  Text("Contacts on the "),
                ],
              ),
              SizedBox(height: 10,),
                   Obx(() =>          Column(
                children:contractVontroller.userList
                .map((e) =>  InkWell(
                onTap: (){
                  //    Get.toNamed("/ChatPage",arguments: e);
              //   String roomID= chatController.getRoomId(e.id!);
              //  print(roomID);
               Get.to(ChatPage(userModel:e));
                },
                child: ChatTile(
                  imageUrl:
                   e.profileImage?? AssetsImage1.defprofileURL,
                  name: e.name ?? "user" ,
                  lastChat: e.about?? "Hey there",
                  lastTime: "",
                ),
              ),
              
              ).toList()
         ),)
        ],
       
      ),
    ));
  }
}