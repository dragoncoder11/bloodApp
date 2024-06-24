import 'dart:convert';

import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/custom_button.dart';
import 'package:bloody/core/utils/custom_text_field.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:bloody/features/home/presentation/views/home.dart';
import 'package:bloody/features/register/presentation/views/forget_password.dart';
import 'package:bloody/features/register/presentation/views/login_page.dart';
import 'package:bloody/features/register/presentation/widgets/register.dart';
import 'package:bloody/features/register/presentation/views/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var idController = TextEditingController();
    var birthdateController = TextEditingController();
    var genderController = TextEditingController();
    var typeController = TextEditingController();
    var telController = TextEditingController();
    GlobalKey<FormState> globalKey = GlobalKey<FormState>();

    return Form(
      key: globalKey,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Sign Up',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
            const SizedBox(
              height: 24,
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
            CustomTextField(
              hint: 'Name',
              controller: nameController,
            ),
            CustomTextField(
              hint: 'ID Number',
              controller: idController,
            ),
            CustomTextField(
              hint: 'Age',
              controller: birthdateController,
            ),
            CustomTextField(
              hint: 'Gender',
              controller: genderController,
            ),
            CustomTextField(
              hint: 'Blood Type',
              controller: typeController,
            ),
            CustomTextField(
              hint: 'Phone Number',
              controller: telController,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              ontap: () async {
                var headers = {
                  'Accept': 'application/json',
                  'Content-Type': 'application/json',
                  'Authorization':
                      'Bearer 36|IzrJqDGyCCA5uBvpZUuUN1OS3SdooCDeriNF1OsC395d8b22'
                };
                var request = http.Request(
                    'POST',
                    Uri.parse(
                        'https://api-service.cloud/vien2vien/public_html/api/register'));
                request.body = json.encode({
                  "email": emailController.text.toString(),
                  "password": passwordController.text.toString(),
                  "name": nameController.text.toString(),
                  'birth_date': birthdateController.text.toString(),
                  'gender': genderController.text.toString(),
                  'phone': telController.text.toString(),
                  "idnumber": 7,
                  "bloodtype": "A+"
                });
                request.headers.addAll(headers);

                http.StreamedResponse response = await request.send();

                if (response.statusCode == 200) {
                  Navigator.of(context).pushNamed(LoginPage.id);
                  print(await response.stream.bytesToString());
                } else {
                  print(response.reasonPhrase);
                }
              },
              title: 'Sign up',
            ),
            const SizedBox(
              height: 10,
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
