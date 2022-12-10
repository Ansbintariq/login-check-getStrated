import 'package:flutter/material.dart';
import 'package:login_check/loginUser.dart';
import 'package:login_check/onbordingScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashUser extends StatefulWidget {
  const SplashUser({super.key});

  @override
  State<SplashUser> createState() => _SplashUserState();
}

class _SplashUserState extends State<SplashUser> {
  @override
  void initState() {
    super.initState();
  }

  delayUser() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var intro = pref.getBool('intro');
    print(intro);

    Future.delayed(const Duration(seconds: 2), () {
      // if (loggedUser == true) {
      //   Navigator.of(context)
      //       .push(MaterialPageRoute(builder: (context) => const HomeUser()));
      // } else {
      //   Navigator.of(context)
      //       .push(MaterialPageRoute(builder: (context) => const LoginUser()));
      // }
      if (intro == true) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const LoginUser()));
      } else {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => OnBoardingPage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    delayUser();
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
