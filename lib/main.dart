import 'package:flutter/material.dart';
// import 'package:flash_chat/screens/welcome_screen.dart';
import 'screens/welcome_screen.dart';
// import 'package:flash_chat/screens/login_screen.dart';
import 'screens/login_screen.dart';
// import 'package:flash_chat/screens/registration_screen.dart';
import 'screens/registration_screen.dart';
// import 'package:flash_chat/screens/chat_screen.dart';
import 'screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
      apiKey: 'AIzaSyD10SRHxWKwfmSjWWZWXa0DvzSzgCayyHI',
      appId: '1:57792202010:android:565a294d0935eb3444d8a3',
      messagingSenderId: '57792202010',
      projectId: 'flash-chat-36986'));
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        RegistrationScreen.id : (context) => RegistrationScreen(),
        ChatScreen.id : (context) => ChatScreen(),
      }
    );
  }
}


// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';