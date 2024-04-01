import 'package:chat02/page/pagesecond/Pbottom.dart';
import 'package:chat02/page/pagesecond/ProfileController.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserUpdateProfile extends StatelessWidget {
  const UserUpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(title:Text("Update profile"),),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer
              ) ,
              child: Row(
        
                children: [
                  Expanded(child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        child: Center(child: Icon(Icons.image, size: 40,),),
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background
                        ,borderRadius: BorderRadius.circular(100)
                        ),
                       
                      ),
                      SizedBox(height: 20,),
                      Row(children: [
                        Text("person information",
                        style: Theme.of(context).textTheme.labelMedium,
                        )
                      ],),
                      SizedBox(height: 20,),
                       Row(children: [
                        Text("Name",
                        style: Theme.of(context).textTheme.bodyMedium,
                        )
                      ],),
                      SizedBox(height: 10,),
                      TextField(
                        textInputAction:  TextInputAction.next,
                        decoration:InputDecoration(
                          hintText: "khaled",
                          prefixIcon:  Icon(Icons.person)),
                      ),
                        SizedBox(height: 20,),
                       Row(children: [
                        Text("Email id",
                        style: Theme.of(context).textTheme.bodyMedium,
                        )
                      ],),
                      SizedBox(height: 10,),
                      TextField(  textInputAction:  TextInputAction.next,
                        decoration:InputDecoration(
                          hintText: "khaled@yahoo.com",
                          prefixIcon:  Icon(Icons.email)),),
                            SizedBox(height: 20,),
                       Row(children: [
                        Text("phone",
                        style: Theme.of(context).textTheme.bodyMedium,
                        )
                      ],),
                      SizedBox(height: 10,),
                      TextField(  textInputAction:  TextInputAction.next,
                        decoration:InputDecoration(
                          hintText: "09888488484",
                          prefixIcon:  Icon(Icons.phone)),)
                          ,SizedBox(height: 35),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Pbottom(
                                  BName: "Save", 
                                  ontap:(){})),
                            ],
                          )
                    ],
                    
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}