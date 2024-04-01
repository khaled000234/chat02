import 'package:chat02/final/images.dart';
import 'package:chat02/page/pagesecond/chatTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        children:  [
      InkWell(
        onTap: (){
           Get.toNamed("/ChatPage");
        },
        child: ChatTile(
          imageUrl:AssetsImage1.boyPic,
        name: "ssa",
        lastChat: "bad me bat krte hai",
        lastTime: "09:23 PM",
        ),
      ),
          ChatTile(
            imageUrl:AssetsImage1.boyPic,
      name: "khaled",
      lastChat: "mvlkm dlksv LK",
      lastTime: "09:23 PM",
      ),
          ChatTile(
            imageUrl:AssetsImage1.boyPic,
      name: "khaled",
      lastChat: "mvlkm dlksv LK",
      lastTime: "09:23 PM",
      ),
    
        ChatTile(
            imageUrl:AssetsImage1.boyPic,
      name: "khaled",
      lastChat: "mvlkm dlksv LK",
      lastTime: "09:23 PM",
      ),
    
    
        ],
    );
  }
}