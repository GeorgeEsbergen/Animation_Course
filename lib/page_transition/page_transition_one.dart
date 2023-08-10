import 'package:flutter/material.dart';

class PageTransitionOne extends StatefulWidget {
  const PageTransitionOne({super.key});

  @override
  State<PageTransitionOne> createState() => _PageTransitionOneState();
}

class _PageTransitionOneState extends State<PageTransitionOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text("Animated Text Style"),
        centerTitle: true,
      ),
      body: Center(child: ElevatedButton(
        child:const Text("Back To Home") ,
        onPressed: (){
        Navigator.of(context).pop();
      },
      ),
      ),
    );
  }
}