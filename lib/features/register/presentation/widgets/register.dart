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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    String selectedBirthdate = 'No date selected';

    Future<void> _selectBirthdate(
        BuildContext context, Function(String) setDate) async {
      DateTime today = DateTime.now();
      DateTime initialDate =
          today.subtract(Duration(days: 365 * 25)); // Default to 25 years ago
      DateTime firstDate =
          today.subtract(Duration(days: 365 * 100)); // 100 years ago
      DateTime lastDate = today;

      DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate,
      );

      if (pickedDate != null) {
        String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
        setDate(formattedDate);
      }
    }

    var emailController = TextEditingController();
    String birth_date = "";
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
            CustomTextField(
              hint: 'Name',
              controller: nameController,
            ),
            CustomTextField(
              hint: 'ID Number',
              controller: idController,
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  _selectBirthdate(context, (String date) {
                    selectedBirthdate = date;
                    birthdateController.text = date.toString();
                  });
                },
                child: TextFormField(
                  enabled: false,
                  controller: birthdateController,
                  decoration: InputDecoration(
                    hintText: 'Birth Date',
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )),
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
                  'birth_date': selectedBirthdate.toString(),
                  'gender': genderController.text.toString(),
                  'phone': telController.text.toString(),
                  "idnumber": idController.text.toString(),
                  "bloodtype": typeController.text.toString()
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
