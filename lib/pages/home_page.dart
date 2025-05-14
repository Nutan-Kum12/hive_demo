import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_demo/controllers/home_controllers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    final HomeControllers controller = Get.put(HomeControllers());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
    );
  }
}