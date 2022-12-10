import 'package:flutter/material.dart';
import 'package:login_check/homeUser.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({super.key});

  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: (() async {
            SharedPreferences pref = await SharedPreferences.getInstance();
            pref.setBool('logIn', true);
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomeUser()));
          }),
          child: const Text("Login"),
        ),
      ),
    );
  }
}
