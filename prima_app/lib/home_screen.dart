import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex=0;

  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

List<Widget> screens = [

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          actions:[ Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Image.asset("lib/assets/logo.png"),
          )],
        ),
      ),
      drawer:const Drawer(),
      body: SingleChildScrollView(
      child: Column(
        children: const [


        ]),
    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: changeIndex,
      items: const [
     BottomNavigationBarItem(icon:Icon(Icons.home), label: "Home" ),
     BottomNavigationBarItem(icon:Icon(Icons.settings), label: "Settings"),
     BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
    ]),
    ); 

  }
}