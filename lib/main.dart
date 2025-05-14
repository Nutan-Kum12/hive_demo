import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
import 'package:hive_demo/pages/home_page.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //  final dir = await getApplicationDocumentsDirectory();
  // print("App doc path: ${dir.path}"); 
  await Hive.initFlutter();
  // await Hive.openBox('myBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  HomePage(),
    );
  }
}
