import 'package:chat02/final/ChatModel.dart';
import 'package:chat02/final/images.dart';
import 'package:chat02/mode/ChatController.dart';
import 'package:chat02/mode/Usermodel.dart';
import 'package:chat02/page/chat/Chatbubble.dart';
import 'package:chat02/page/pagesecond/ProfileController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ChatPage extends StatelessWidget {
  final UserModel userModel;
  const ChatPage({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
      ChatController chatController =Get.put(ChatController());
      TextEditingController messageController =TextEditingController();
     ProfileController profileController = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        leading:  Padding(
          padding: const EdgeInsets.only(left: 10),
          child:  Image.asset(AssetsImage1.boyicon),
        ),
        title:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text( 
          userModel.name ?? "User",
            style: Theme.of(context).textTheme.bodyLarge,),
          Text(
            "online",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          ],
      ),
        actions:[
            IconButton(onPressed: (){}, 
            icon:Icon(Icons.phone)),
              IconButton(onPressed: (){}, 
            icon:Icon(Icons.video_call))
          ]),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Theme.of(context).colorScheme.primaryContainer
            ),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                 child: SvgPicture.asset(AssetsImage1.micSvg,width: 25,
              // child: Image.asset("asset/icon/mic.png", width: 25,),
                  ),
                ),
                SizedBox(width: 10),

                Expanded(
                  child: 
                  TextField(
                    controller: messageController,
                  decoration: const InputDecoration(
                    filled: false,hintText: "type message ....."
                  ),
                )),
                SizedBox(width: 10,),
                 Container(
                    width: 30,
                    height: 30,
                   child: SvgPicture.asset(
                    AssetsImage1.gallerySVG,width: 25,
                    ),
                   // SvgPicture.asset(AssetsImage1.sendSVG),
                  ),
                
                 InkWell(
                    onTap: (){
                      // var newChat =ChatModel(
                      
                      // );
                    // var newChat =ChatModel(
                      ///////////////////////////////////////////////////////
                      ////////////////////////////////////////////////////////////
                    // );
                    if (messageController.text.isNotEmpty) {
                      chatController.sendMessage(
                        userModel.id!,messageController.text);
                          messageController.clear();
                         
                    
                    }
                  },
                  
                   child: Container(
                   
                    width: 30,
                    height: 30,
                    //child: Image.asset("asset/icon/send.png", width: 25,), 
                    child: SvgPicture.asset(AssetsImage1.SendSVG,width: 25,),
                                   ),
                 ),
              ],
            ),
          ),
          body: 
            
            Padding(
            padding: EdgeInsets.only(bottom: 70,top: 10,left: 10,right: 10),
            child: StreamBuilder<List<ChatModel>>(
              
              stream:chatController.getMessage(userModel.id!) ,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.hasError) {
                  return Center(
                    child: Text("Error : ${snapshot.error}"),
                  );
                 
                }
                if (snapshot.data == null) {
                  return  Center(
                  child:   Text("no message")
                  );
                }
                else{
                  return ListView.builder(
                    reverse: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder:(context,index){
                      DateTime timestamp=
                DateTime.parse(snapshot.data![index].timestamp!);
                String formattedTime =DateFormat('hh:mm a')
                .format(timestamp);
                 return Chatbuble(
                  message: snapshot.data![index].message!,
                  imageUrl: snapshot.data![index].imageUrl ??"",
                 isComming: 
                snapshot.data![index]
                   .receiverId == profileController.currentUser.value.id,
                  status: "read",
                  time: formattedTime,
                
                  
                    );
                    } 
                  );
                }
              },
              )
            ),
    );
  }
}
