import 'package:chat02/final/String.dart';
import 'package:chat02/final/images.dart';
import 'package:chat02/page/chat/chatPage.dart';
import 'package:chat02/page/chatList.dart';
import 'package:chat02/page/pagesecond/ProfileController.dart';
import 'package:chat02/page/pagesecond/chatTile.dart';
import 'package:chat02/page/pagesecond/image.picker.dart';
import 'package:chat02/page/pagesecond/mytabBar.dart';
import 'package:chat02/page/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;



  @override
  Widget build(BuildContext context) {
     TabController tabController= TabController(length:3 , vsync:this);
    ProfileController profileController =Get.put(ProfileController());
   ImagePickerController imagePickerController=Get.put(ImagePickerController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text(
          AppString.appName,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: [
          IconButton(
            onPressed: () {
              imagePickerController.pickerImage();
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: ()async {
              // Get.toNamed("/profilePage");
            // await profileController.getUserDeatails();
            Get.to(profilePage());
            },
            icon: Icon(Icons.more_vert_rounded),
          ),
           IconButton(
            onPressed: (){
            Get.toNamed("/ContactPage");
            },
            icon: Icon(Icons.save),
          ),
        ],
        bottom: MyTabBar(tabController, context),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
             Get.toNamed("/ContactPage");
           // Get.to(ChatPage(userModel: userModel));
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ListView(
            children: [
              InkWell(
                onTap: (){
                      Get.toNamed("/ChatPage");
                },
                child: ChatTile(
                  imageUrl: AssetsImage1.boyicon,
                  name: "ssa",
                  lastChat: "bad me bat krte hai",
                  lastTime: "09:23 PM",
                ),
              ),
                 ChatTile(
                imageUrl: AssetsImage1.boyicon,
                name: "ssa",
                lastChat: "bad me bat krte hai",
                lastTime: "09:23 PM",
              ),
                  ChatTile(
                imageUrl: AssetsImage1.boyicon,
                name: "ssa",
                lastChat: "bad me bat krte hai",
                lastTime: "09:23 PM",
              ),
            ],
          ),
          ListView(
            children: [
              ListTile(
                title: Text("Name Nitish"),
              ),
            ],
          ),
          ListView(
            children: [
              ListTile(
                title: Text("Name Nitish"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}