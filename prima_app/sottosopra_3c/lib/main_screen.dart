import 'package:flutter/material.dart';
import 'package:sottosopra_3c/home_screen.dart';
import 'assets/search_screen.dart';
import 'settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pages = const [
    HomeScreen(),
    SearchScreen(),
    SettingsScreen(),
  ];
  void chooseIndex(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages.elementAt(selectIndex),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectIndex,
            onTap: chooseIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Prova 1"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Preferiti"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Prova 2"),
            ]),
        drawer: const Drawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Center(
              child: Image.asset(
            "lib/assets/logo.png",
            width: 200,
          )),
          actions: const [
            SizedBox(
              width: 50,
            )
          ],
        ));
  }
}
