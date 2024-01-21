import 'package:flutter/material.dart';
import 'package:flutter_hw_multipage/pages/course_page.dart';
import 'package:flutter_hw_multipage/pages/favorite.dart';
import 'package:flutter_hw_multipage/pages/myinfo_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 0;

  List widgetOption = [
    MyInfo(),
    Favorite(),
    CoursePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOption[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'MyInfo'),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'API'),
      ],
      currentIndex: currentIndex,
      onTap: (index) => setState(()=> currentIndex=index),
      ),
    );
  }
}

