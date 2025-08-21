import 'package:flutter/material.dart';
import 'package:recipebook/screens/home_screen.dart';
import 'dart:io';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  //clase dinamica
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "libro de plantas",
        home: PlantsBook());
  }
}

class PlantsBook extends StatelessWidget {
  const PlantsBook({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber.shade300,
            title: Text(
              'Medicina natural',
              style: TextStyle(color: const Color.fromARGB(255, 8, 8, 8)),
            ),
            bottom: TabBar(
              indicatorColor: Colors.blue,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'home',
                ),
                Tab(
                  icon: Icon(Icons.question_mark),
                ),
                Tab(
                  icon: Icon(Icons.people),
                  text: 'people',
                ),
                Tab(
                  icon: Icon(Icons.info),
                  text: 'info',
                ),
              ],
            ),
          ),
          body: TabBarView(children: [HomeScreen()])),
    );
  }
}
