import 'package:chat02/final/images.dart';
import 'package:chat02/page/chat/Chatbubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        
        title:  Row(
        children: [
          Image.asset(AssetsImage1.boyPic, width: 50,),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Text( 
          "KHALED",
            style: Theme.of(context).textTheme.bodyLarge,),
          Text(
            "online",
            style: Theme.of(context).textTheme.bodySmall,
          )
          
          ],
          
          ),
        
         
        ],
      ),
        actions:[
            IconButton(onPressed: (){}, icon:Icon(Icons.phone))
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
                  decoration: InputDecoration(
                    filled: false,hintText: "type message"
                  ),
                )),
                SizedBox(width: 10,),
                Container(
                  width: 30,
                  height: 30,
                   child: Image.asset("asset/icon/Gallery.jpg", width: 25,),
                 // child: SvgPicture.asset(AssetsImage1.GallerySVG,width: 25,),
                 // SvgPicture.asset(AssetsImage1.sendSVG),
                ),
                 Container(

                  width: 30,
                  height: 30,
                  //child: Image.asset("asset/icon/send.png", width: 25,), 
                  child: SvgPicture.asset(AssetsImage1.sendSVG,width: 25,),
                  
                  
                )
              
           
              ],
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
       Chatbuble(
        message: 'Hello how are you',
         isComming: true,
          time: '10:10',
           status: 'read',
            imageUrl: '',
            ),
              Chatbuble(
        message: 'Hello how are you',
         isComming: false,
          time: '10:10',
           status: 'read',
            imageUrl: '',
            ),
               Chatbuble(
        message: 'Hello how are you',
         isComming: true,
          time: '10:10',
           status: 'read',
            imageUrl: '',
            ),
               Chatbuble(
        message: 'Hello how are you ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccchhhhhhhhhhhhhhhhhhhh',
         isComming: false,
          time: '10:10',
           status: 'read',
            imageUrl: 'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
            ),
            ]),
          ),
    );
  }
}







// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

// // ...

