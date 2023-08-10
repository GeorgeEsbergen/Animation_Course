import 'package:animation_project_one/implicit_animation/main_page/main_page.dart';
import 'package:animation_project_one/page_transition/main_page/main_page.dart';
import 'package:flutter/material.dart';

import 'explicit_animation/main_page/main_page.dart';
import 'more_animation/main_page/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int animationInt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Course"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ImplicitAnimationButtons()));
            },
            child: const Text(" Implicit Animation "),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ExplicitAnimationButtons()));
            },
            child: const Text(" Explicit Animation "),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PageTransitionsButtons()));
            },
            child: const Text(" Page Transition "),
          ),
ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MoreAnimationsButtons()));
            },
            child: const Text(" More Animations "),
          ),



          
        ]),
      ),
    );
  }
}
