
import 'dart:io';

import 'package:chat02/page/pagesecond/Pbottom.dart';
import 'package:chat02/page/pagesecond/ProfileController.dart';
import 'package:chat02/page/pagesecond/image.picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isEdit =false.obs;
    ProfileController profileController= Get.put(ProfileController());
    TextEditingController name= TextEditingController(text: profileController.currentUser.value.name);
    TextEditingController email= TextEditingController(text: profileController.currentUser.value.email);
    TextEditingController phone= TextEditingController(text:  profileController.currentUser.value.phoneNumber);
    TextEditingController about= TextEditingController(text:profileController.currentUser.value.about);
    ImagePickerController imagePickerController=Get.put(ImagePickerController());
    RxString imagePath="".obs;
    return Scaffold(
appBar: AppBar(
  title: Text("profile"),
),
body:Padding(
  padding: const EdgeInsets.all(8.0),
  child: ListView(
    children: [
      Container(
        padding: const EdgeInsets.all(10),
       
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer
       , borderRadius: BorderRadius.circular(20)
        ),
        child: Row(children: [
          Expanded(
            child: Column(children: [
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Obx(() => isEdit.value?
                  InkWell(onTap: ()async{
                imagePath.value= await 
                 imagePickerController.pickerImage();

                print(imagePath.value);
                 },
                   child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: imagePath.value ==""
                      ? Icon(Icons.add)
                      :ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.file(
                          File(imagePath.value),
                          fit: BoxFit.cover,),
                          
                      ),
                    
                   )
                 ):
                Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: profileController.currentUser.value.profileImage ==""
                      ? Icon(Icons.image)
                      :ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                           profileController.currentUser.value.profileImage!,fit: BoxFit.cover,
                          // File(imagePath.value),
                          //fit: BoxFit.cover,
                          ),
                          
                      ),
                    
                   )
                  ),
                ],
              ),
              SizedBox(height: 20),
            Obx(() =>  TextField(
              controller: name,
                      enabled: isEdit.value,
                      decoration: InputDecoration(
                        filled: isEdit.value,
                        labelText: "Name",
                        prefixIcon: Icon(Icons.person),
                        
                      ),
                    ),),
                    //SizedBox(height: 10),
            Obx(() =>  TextField(
              controller: about,
                      enabled: isEdit.value,
                      decoration: InputDecoration(
                        filled: isEdit.value,
                        labelText: "about",
                        prefixIcon: Icon(Icons.info),
                        
                      ),
                    ),),
                  TextField(
              controller: email,
                      enabled: false,
                      decoration: InputDecoration(
                        filled: isEdit.value,
                        labelText: "email",
                        prefixIcon: Icon(Icons.email),
                        
                      ),
                    ),
                    Obx(() =>   TextField(
              controller: phone,
                      enabled: isEdit.value,
                      decoration: InputDecoration(
                        filled: isEdit.value,
                        labelText: "number",
                        prefixIcon: Icon(Icons.phone),
                        
                      ),
                    ),),
                 // IconButton(onPressed: (){}, icon:Icon(Icons.edit))
                SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Obx(() =>  isEdit.value 
                 ? Pbottom(BName:"save" ,ontap: ()async{
                                 await profileController.updateProfile(
                imagePath.value, name.text, about.text, phone.text);
                      isEdit.value=false;
                  },): Pbottom(BName:"Edit" ,ontap: (){
                    isEdit.value=true;
                  },),)
                ],
              ),
                 SizedBox(height: 20,),
            ],),
          )
        ],),
      )
    ],
  ),
)

  
  
    );
  }
}


// // Center(
                              //   child: ElevatedButton(onPressed: (){
                              //     authController.logoutUser();
                              //   }, child: Text("logout")),
                              // )