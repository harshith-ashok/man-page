import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:man_page/screens/home.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

const font = "Fant Sans";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          fontFamily: font,
          fontSize: 20,
        ),
      )),
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final _widgetOptions = [
    const Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    HomePage(),
    const Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SalomonBottomBar(
          items: [
            SalomonBottomBarItem(
              icon: const Icon(LineIcons.thList),
              title: const Text('Categories'),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              icon: const Icon(LineIcons.home),
              title: const Text('Home'),
            ),
            SalomonBottomBarItem(
              icon: const Icon(LineIcons.user),
              title: const Text('About'),
              selectedColor: Colors.green,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
