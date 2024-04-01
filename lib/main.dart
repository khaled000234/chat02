import 'package:chat02/Auth/AuthPage.dart';
import 'package:chat02/Home.dart';
import 'package:chat02/final/PagePath.dart';
import 'package:chat02/final/theme.dart';
import 'package:chat02/firebase_options.dart';
import 'package:chat02/page/HomePage.dart';
import 'package:chat02/page/SpaceController.dart';
import 'package:chat02/page/SplacePage.dart';
import 'package:chat02/page/chat/chatPage.dart';
import 'package:chat02/page/pagesecond/LoginForm.dart';
import 'package:chat02/page/pagesecond/LoginuserInfo.dart';
import 'package:chat02/page/pagesecond/singupForm.dart';
import 'package:chat02/page/pagesecond/test.dart';
import 'package:chat02/page/pagesecond/updateProfile.dart';
import 'package:chat02/page/pagesecond/welcomeHead.dart';
import 'package:chat02/page/profilePage.dart';
import 'package:chat02/page/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      getPages: pagePath,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      
      
      home:LoginUserInfo()
    );
  }
}
// //flutter pub get
// flutter pub run flutter_launcher_icons
