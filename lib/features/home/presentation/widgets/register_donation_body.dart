import 'dart:convert';

import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:bloody/features/home/presentation/views/thank_you_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterDonationBody extends StatefulWidget {
  const RegisterDonationBody({super.key});

  @override
  State<RegisterDonationBody> createState() => _RegisterDonationBodyState();
}

class _RegisterDonationBodyState extends State<RegisterDonationBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getGov();
  }

  List g = [];
  String gov_id = "1";
  String cit_id = "1";

  List govs = [];
  Future<void> getGov() async {
    var request = http.MultipartRequest(
        'GET',
        Uri.parse(
            'https://api-service.cloud/vien2vien/public_html/api/governates'));
    request.fields.addAll({'city_id': '1'});

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String jsonString = await response.stream.bytesToString();

      setState(() {
        g = jsonDecode(jsonString);
      });
      for (var i = 0; i < g.length; i++) {
        govs.add(g[i]['name_en']);
      }
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  List city = [];
  List g2 = [];
  Future<void> registerDonation() async {
  var request = http.MultipartRequest(
    'POST',
    Uri.parse('https://api-service.cloud/vien2vien/public_html/api/donations'),
  );
  request.fields.addAll({
    'governorate_id': gov_id,
    'city_id': cit_id,
    'hospital_id': gov_id, // Assuming you have a hos_id variable to store the selected hospital ID
  });

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    // Registration successful, navigate to the instruction page
    Navigator.pushNamed(context, '/instruction_page');
  } else {
    // Registration failed, handle the error
    print(response.reasonPhrase);
  }
}
  Future<void> getcity() async {
    var request = http.MultipartRequest(
        'POST',
        Uri.parse(
            'https://api-service.cloud/vien2vien/public_html/api/cities'));
    request.fields.addAll({'governorate_id': gov_id});

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String jsonString = await response.stream.bytesToString();

      setState(() {
        g2 = jsonDecode(jsonString);
      });
      for (var i = 0; i < g.length; i++) {
        city.add(g2[i]['name_en']);
      }
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  List Hos = [];
  Future<void> getHos() async {
    var request = http.MultipartRequest(
        'POST',
        Uri.parse(
            'https://api-service.cloud/vien2vien/public_html/api/hospitals'));
    request.fields.addAll({'city_id': cit_id});

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String jsonString = await response.stream.bytesToString();
      List grr = [];
      setState(() {
        grr = jsonDecode(jsonString);
      });
      for (var i = 0; i < g.length; i++) {
        Hos.add(grr[i]['name_en']);
      }
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }
  bool _isRegistering = false;

@override
Widget build(BuildContext context) {
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: _isRegistering
          ? const Center(child: CircularProgressIndicator())
          : ListView(
          children: [
            Text(
              'Register',
              style: Theme.of(context).textTheme.headline2,
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
                  // filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Governorate',
                  hintStyle: Styles.style12,
                ),
                dropdownColor: Theme.of(context).backgroundColor,
                items: govs.map((gov) {
                  return DropdownMenuItem<String>(
                    value: gov,
                    child: Text(gov, style:Theme.of(context).textTheme.headline2),
                  );
                }).toList(),
                onChanged: (value) {
                  print(value);
                  setState(() {
                    int a = govs.indexWhere((element) => element == value);
                    print(g);
                    gov_id = g[a]['id'].toString();
                    getcity();
                  });
                }),
            const SizedBox(
              height: 15,
            ),
            DropdownButtonFormField(
                decoration: InputDecoration(
                  fillColor: kTextGreyColor,
                  // filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'City',
                  hintStyle: Styles.style12,
                ),
                dropdownColor: Theme.of(context).backgroundColor,
                items: city.map((gov) {
                  return DropdownMenuItem<String>(
                    value: gov,
                    child: Text(gov, style:Theme.of(context).textTheme.headline2),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    int a = city.indexWhere((element) => element == value);
                    print(g);
                    cit_id = g2[a]['id'].toString();
                    getHos();
                  });
                }),
            const SizedBox(
              height: 15,
            ),
            DropdownButtonFormField(
                decoration: InputDecoration(
                  fillColor: kTextGreyColor,
                  //  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Hospital',
                  hintStyle: Styles.style12,
                ),
                dropdownColor: Theme.of(context).backgroundColor,
                items: Hos.map((gov) {
                  return DropdownMenuItem<String>(
                    value: gov,
                    child: Text(gov, style:Theme.of(context).textTheme.headline2),
                  );
                }).toList(),
                onChanged: (value) {}),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child:ElevatedButton(
  onPressed: () async {
    setState(() {
      _isRegistering = true;
    });
    await registerDonation();
    setState(() {
      _isRegistering = false;
      Navigator.of(context).pushNamed(ThankYouPage.id);
    });
  },
  style: const ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(Colors.red),
  ),
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
/* 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              'Register',
              style: Theme.of(context).textTheme.headline2,
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
                  // filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Governorate',
                  hintStyle: Styles.style12,
                ),
                dropdownColor: kTextWhiteColor,
                items: govs.map((gov) {
                  return DropdownMenuItem<String>(
                    value: gov,
                    child: Text(gov, style:Theme.of(context).textTheme.headline2),
                  );
                }).toList(),
                onChanged: (value) {
                  print(value);
                  setState(() {
                    int a = govs.indexWhere((element) => element == value);
                    print(g);
                    gov_id = g[a]['id'].toString();
                    getcity();
                  });
                }),
            const SizedBox(
              height: 15,
            ),
            DropdownButtonFormField(
                decoration: InputDecoration(
                  fillColor: kTextGreyColor,
                  // filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'City',
                  hintStyle: Styles.style12,
                ),
                dropdownColor: kTextWhiteColor,
                items: city.map((gov) {
                  return DropdownMenuItem<String>(
                    value: gov,
                    child: Text(gov, style:Theme.of(context).textTheme.headline2),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    int a = city.indexWhere((element) => element == value);
                    print(g);
                    cit_id = g2[a]['id'].toString();
                    getHos();
                  });
                }),
            const SizedBox(
              height: 15,
            ),
            DropdownButtonFormField(
                decoration: InputDecoration(
                  fillColor: kTextGreyColor,
                  //  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Hospital',
                  hintStyle: Styles.style12,
                ),
                dropdownColor: kTextWhiteColor,
                items: Hos.map((gov) {
                  return DropdownMenuItem<String>(
                    value: gov,
                    child: Text(gov, style:Theme.of(context).textTheme.headline2),
                  );
                }).toList(),
                onChanged: (value) {}),
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
 */