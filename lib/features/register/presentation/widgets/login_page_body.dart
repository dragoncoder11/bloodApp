import 'dart:convert';

import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/custom_button.dart';
import 'package:bloody/core/utils/custom_text_field.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:bloody/features/home/presentation/views/home.dart';
import 'package:bloody/features/register/presentation/views/forget_password.dart';
import 'package:bloody/features/register/presentation/widgets/register.dart';
import 'package:bloody/features/register/presentation/views/register_page.dart';
import 'package:bloody/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    GlobalKey<FormState> globalKey = GlobalKey<FormState>();

    return Form(
      key: globalKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Sign in',
                  style:Theme.of(context).textTheme.headline1
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextField(
              hint: 'Email',
              controller: emailController,
            ),
            CustomTextField(
              hint: 'Password',
              controller: passwordController,
              obscureText: true,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              ontap: () async {
                if (globalKey.currentState!.validate()) {
                  var headers = {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json',
                    'Authorization':
                        'Bearer 36|IzrJqDGyCCA5uBvpZUuUN1OS3SdooCDeriNF1OsC395d8b22'
                  };
                  var request = http.Request(
                      'POST',
                      Uri.parse(
                          'https://api-service.cloud/vien2vien/public_html/api/login'));
                  request.body = json.encode({
                    "email": emailController.text.toString(),
                    "password": passwordController.text.toString()
                  });
                  request.headers.addAll(headers);

                  http.StreamedResponse response = await request.send();

                  if (response.statusCode == 200) {
                    String jsonString = await response.stream.bytesToString();
                    Map<String, dynamic> userMap = jsonDecode(jsonString);
                    BloodApp.tocken = userMap['tocken'].toString();

                    Navigator.of(context).pushNamed(Home.id);
                  } else {
                    print(response.reasonPhrase);
                  }
                }
              },
              title: 'Sign in',
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(ForgetPassword.id);
                },
                child: Text(
                  'Forgot password?',
                  style:Theme.of(context).textTheme.headline4,
                  textAlign: TextAlign.center,
                )),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don’t have an account?   ', style: Theme.of(context).textTheme.headline4),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(RegisterPage.id);
                  },
                  child: Text(' Sign Up',
                      style:Theme.of(context).textTheme.headline4),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      'assets/google.png',
                      height: 50,
                      width: 50,
                    )),
                const SizedBox(
                  width: 15,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      'assets/apple.png',
                      height: 50,
                      width: 50,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
