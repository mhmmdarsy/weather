import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'package:window_manager/window_manager.dart';
import 'dart:io';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await windowManager.ensureInitialized();
    const options = WindowOptions(size: Size(420, 800), center: true);
    await windowManager.waitUntilReadyToShow(options, () async {
      await windowManager.setMinimumSize(const Size(420, 700)); // batas bawah
      // await windowManager.setMaximumSize(const Size(420, 700)); // lock ukuran
      // await windowManager.setResizable(false); // non-resizable total
      await windowManager.show();
      await windowManager.focus();
    });
  }


  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuacaku',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(
            255, 66, 172, 70)),
      ),
      home: const HomeScreen(),
    );
  }
}

// Counter demo left out; HomeScreen is now the entry page.