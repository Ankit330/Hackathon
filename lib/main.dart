import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sample/model/firebaseHelper.dart';
import 'package:sample/model/userMode.dart';
import 'package:sample/pages/home_page.dart';
import 'package:sample/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/home_page.dart';
import 'pages/intro_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  User? currentUser = FirebaseAuth.instance.currentUser;

  if (currentUser != null) {
    UserModel thisUserModel =
        await FirebaseHelper.getUserModelById(currentUser.uid);

    runApp(LoggedInApp(
      userModel: thisUserModel,
    ));
  } else {
    runApp(const MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}

class LoggedInApp extends StatelessWidget {
  final UserModel? userModel;
  const LoggedInApp({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(
        userModel: userModel,
      ),
    );
  }
}
