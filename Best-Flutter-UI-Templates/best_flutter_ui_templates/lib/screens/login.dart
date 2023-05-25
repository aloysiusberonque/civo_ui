import 'dart:convert';

import 'package:best_flutter_ui_templates/widgets/q_button.dart';
import 'package:best_flutter_ui_templates/widgets/q_button_outline.dart';
import 'package:best_flutter_ui_templates/widgets/q_text_field.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool verifyLogin() {
    if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
      return false;
    }
    return true;
  }

  Future<void> login(String username, String password) async {
    // late NavigatorState dialogContext;
    // showDialog(
    //   context: context,
    //   barrierDismissible: false,
    //   builder: (BuildContext context) {
    //     dialogContext = Navigator.of(context);
    //     return const Center(
    //       child: CircularProgressIndicator(),
    //     );
    //   },
    // );
    final response =
        await http.post(Uri.parse('http://10.0.2.2:8000/token/obtain/'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<String, dynamic>{
              'email': username,
              'password': password,
            }));
    if (response.statusCode == 200) {
      //nav to next screen
    } else if (response.statusCode == 401) {
      // dialogContext.pop();
      // showQToast("Invalid username or password", true);
      throw Exception('Invalid login.');
    } else {
      throw Exception('Something wrong happened. Please try again later.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xfff5f5f5),
          ),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 48.0),
                    child: Image.asset('assets/images/fieryhire_logo.png'),
                  ),
                ]),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(left: 20.0),
                      child: const Text(
                        "FieryHire",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff8C0909),
                        ),
                      ),
                    ),
                    Spacer(flex: 1),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 12.0, right: 20.0),
                      child: QTextField(
                        label: "Email Address",
                        textController: usernameController,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 12.0, right: 20.0),
                      child: QTextField(
                        label: "Password",
                        textController: passwordController,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 20.0, right: 20.0, bottom: 20.0),
                      child: QButton(label: "Login", onPress: () {}),
                    ),
                    Spacer(flex: 1),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
