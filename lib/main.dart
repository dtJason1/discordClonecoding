import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/widgets.dart';
import 'package:window_manager/window_manager.dart';
import 'MainScreen/mainHompage.dart' as mainScreen;
import 'package:untitled1/Colors.dart';

colors color = colors();
void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await windowManager.ensureInitialized();
  WindowManager.instance.setMinimumSize(const Size(900, 500));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: color.backGroundColor),
        useMaterial3: true,
      ),
      home: const mainScreen.MyHomePage(),
    );
  }
}

