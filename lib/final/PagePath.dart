import 'package:chat02/Auth/AuthPage.dart';
import 'package:chat02/page/HomePage.dart';
import 'package:chat02/page/chat/chatPage.dart';
import 'package:chat02/page/pagesecond/LoginuserInfo.dart';
import 'package:chat02/page/pagesecond/updateProfile.dart';
import 'package:chat02/page/profilePage.dart';
import 'package:get/get.dart';

var pagePath=[
  GetPage(name: "/authPage", page:()=>AuthPage(),
  transition: Transition.rightToLeft
  ),
   GetPage(name: "/homepage", page:()=>HomePage(),
  transition: Transition.rightToLeft
  ),
     GetPage(name: "/ChatPage", page:()=>ChatPage(),
  transition: Transition.rightToLeft
  ),
     GetPage(name: "/profilePage", page:()=>profilePage(),
  transition: Transition.rightToLeft
  ),
      GetPage(name: "/UserupdateProfile", page:()=>UserUpdateProfile(),
  transition: Transition.rightToLeft
  ),
       GetPage(name: "/LoginUserInfo", page:()=>LoginUserInfo(),
  transition: Transition.rightToLeft
  ),
];
//LoginUserInfo