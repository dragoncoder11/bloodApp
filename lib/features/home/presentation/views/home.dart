import 'package:bloody/features/home/presentation/views/settings.dart';
import 'package:bloody/features/home/presentation/views/donatation_page.dart';
import 'package:bloody/features/home/presentation/views/home_page.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
static String id='home ';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
int selectedIndex=0;
final listpages=const[
 HomePage(),
 DonationPage(),
 Settings()
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).primaryColor,
        backgroundColor:Theme.of(context).backgroundColor,
        elevation: 0,
      currentIndex: selectedIndex,
      onTap: (value) {
        selectedIndex=value;
        setState(() {
          
        });
      },
        items: const
      [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',),      
        BottomNavigationBarItem(icon: Icon(Icons.bloodtype),label: 'Donate',),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings',),
      ],
      ),
      body: listpages.elementAt(selectedIndex),
    );
  }
}