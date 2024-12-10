import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_pklproject1/home/home_screen.dart';
import 'package:flutter_pklproject1/list/list_screen.dart';
import 'package:flutter_pklproject1/profil/profil_screen.dart';
import 'package:flutter_pklproject1/setting/setting_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  var listWidget = [
    const HomeScreen(),
    const SettingScreen(),
    const ListScreen(),
    const ProfilScreen(),
  ];
  int navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listWidget[navIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
        setState(() {
          navIndex = index;
        });
       },
       currentIndex: navIndex,
       type: BottomNavigationBarType.fixed,
       showSelectedLabels: true,
       showUnselectedLabels: false,
       selectedItemColor: Color.fromARGB(255, 55, 74, 35),
       items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined, 
              color: Color.fromARGB(255, 104, 129, 47)
            ), 
              label:"Home"
            ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined, 
              color: Color.fromARGB(255, 104, 129, 47)
              ), 
              label:"Setting"
              ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list, 
              color: Color.fromARGB(255, 104, 129, 47)), 
              label:"List"
              ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline, 
              color: Color.fromARGB(255, 104, 129, 47)
              ), 
              label:"Profil"),
        ],
      ),
   );
  }
}
