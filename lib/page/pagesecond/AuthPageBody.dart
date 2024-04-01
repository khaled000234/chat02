import 'package:chat02/page/pagesecond/LoginForm.dart';
import 'package:chat02/page/pagesecond/singupForm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class AuthPageBody extends StatelessWidget {
  const AuthPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isLogin =false.obs;
    return  Container(
              //  
                padding: EdgeInsets.all(20),
              //  height:400 ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.primaryContainer
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                      Obx(
                        () =>Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                      InkWell(
                        onTap: (){
                          isLogin.value=true;
                        },
                        child: Container(
                          // color: Colors.orange,
                          width: MediaQuery.sizeOf(context).width /2.7,
                          child: Column(children: [
                            Text("Login",style:isLogin.value 
                            ?Theme.of(context).textTheme.bodyLarge
                            :Theme.of(context).textTheme.labelLarge,
                            ),
                            SizedBox(height: 5),
                            AnimatedContainer(duration: Duration(milliseconds: 200),
                            width: isLogin.value?100:0,
                            height:5 ,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Theme.of(context).colorScheme.primary
                            ),
                            )
                          ],),
                        ),
                      ),
                      
                       InkWell(
                         onTap: (){
                          isLogin.value=false;
                        },
                         child: Container(
                           width: MediaQuery.sizeOf(context).width /2.7,
                           child: Column(children: [
                            Text("singin ",style:isLogin.value 
                            ?Theme.of(context).textTheme.bodyLarge
                            :Theme.of(context).textTheme.bodyLarge,
                            ),
                             SizedBox(height: 5),
                            AnimatedContainer(duration: Duration(milliseconds: 200),
                            width: isLogin.value?0:100,
                            height:3 ,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Theme.of(context).colorScheme.primary
                            ),
                            )
                                                 ],),
                         ),
                       )
                      ],)
                      
                       ),
                      Obx(() => isLogin.value?const LoginForm(): const SingupForm())
                      
                      ],
                      ),
                    ),
                  ],
                ),
              );
  }
}