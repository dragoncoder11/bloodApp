import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import '../../../core/utils/styles.dart';

List? userMap;

class NearestHospital extends StatefulWidget {
  const NearestHospital({super.key});

  @override
  State<NearestHospital> createState() => _NearestHospitalState();
}

class _NearestHospitalState extends State<NearestHospital> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    geet();
  }

  Future<void> geet() async {
    await getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 18,
            ),
            Row(
              children: [
                Text(
                  "Check a hospital to donate now !",
                  style:
                      Theme.of(context).textTheme.headline2
                )
              ],
            ),
            SingleChildScrollView(
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: cards(context)),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getData() async {
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://api-service.cloud/vien2vien/public_html/api/getdata?governorate=1'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String jsonString = await response.stream.bytesToString();
      // print(jsonString);
      setState(() {
        userMap = jsonDecode(jsonString);
      });
    } else {
      print(response.reasonPhrase);
    }
  }
}

Widget cards(BuildContext context) {
  return ListView.builder(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      itemCount: userMap!.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
          //  color: Theme.of(context).primaryColor,
            height: MediaQuery.of(context).size.height / 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: 200,
                    child: Text(
                      userMap![index]['name_en'],
                      style:Styles.style16SemiBold.copyWith(color: Colors.black)
                    )),
                Icon(Icons.check)
              ],
            ),
          ),
        );
      });
}
