import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RegisterDonationBody extends StatefulWidget {
  const RegisterDonationBody({super.key});

  @override
  State<RegisterDonationBody> createState() => _RegisterDonationBodyState();
}

class _RegisterDonationBodyState extends State<RegisterDonationBody> {
  var _value = '0';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              'Register',
              style:Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/register.jpg',
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownButtonFormField(
                decoration: InputDecoration(
                  fillColor: kTextGreyColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Governorate',
                  hintStyle:Theme.of(context).textTheme.headline6
                ),
                items: [
                  DropdownMenuItem(
                    value: '0',
                    child: Text(
                      'Governorate',
                      style:Theme.of(context).textTheme.headline6
                    ),
                  ),
                  DropdownMenuItem(
                    value: '1',
                    child: Text(
                      'jjjjjj',
                      style:Theme.of(context).textTheme.headline6
                    ),
                  ),
                  DropdownMenuItem(
                    value: '2',
                    child: Text(
                      'kkkkkk',
                      style:Theme.of(context).textTheme.headline6
                    ),
                  ),
                ],
                onChanged: (value) {
                  value = _value;
                  setState(() {});
                }),
            const SizedBox(
              height: 15,
            ),
            DropdownButtonFormField(
                decoration: InputDecoration(
                  fillColor: kTextGreyColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'City',
                  hintStyle: Theme.of(context).textTheme.headline6
                ),
                items: [
                  DropdownMenuItem(
                    value: '0',
                    child: Text(
                      'City',
                      style: Theme.of(context).textTheme.headline6
                    ),
                  ),
                  DropdownMenuItem(
                    value: '1',
                    child: Text(
                      'jjjjjj',
                      style: Theme.of(context).textTheme.headline6
                    ),
                  ),
                  DropdownMenuItem(
                    value: '2',
                    child: Text(
                      'kkkkkk',
                      style: Theme.of(context).textTheme.headline6
                    ),
                  ),
                ],
                onChanged: (value) {
                  value = _value;
                }),
            const SizedBox(
              height: 15,
            ),
            DropdownButtonFormField(
                decoration: InputDecoration(
                  fillColor: kTextGreyColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Hospital',
                  hintStyle: Theme.of(context).textTheme.headline6
                ),
                items: [
                  DropdownMenuItem(
                    value: '0',
                    child: Text(
                      'Hospital',
                      style: Theme.of(context).textTheme.headline6
                    ),
                  ),
                  DropdownMenuItem(
                    value: '1',
                    child: Text(
                      'jjjjjj',
                      style: Theme.of(context).textTheme.headline6
                    ),
                  ),
                  DropdownMenuItem(
                    value: '2',
                    child: Text(
                      'kkkkkk',
                      style: Theme.of(context).textTheme.headline6
                    ),
                  ),
                ],
                onChanged: (value) {
                  value = _value;
                }),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)),
                child: const Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
