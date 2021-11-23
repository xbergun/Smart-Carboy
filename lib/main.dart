import 'package:bixos_project/core/init/injection_container.dart' as dependencyInjection;
import 'package:bixos_project/feature/bottom_navigation_bar/view/pages/bottom_navigation_bar_page.dart';
import 'package:bixos_project/feature/bottom_navigation_bar/viewmodel/bottom_navigation_bar_provider.dart';
import 'package:bixos_project/feature/home/viewmodel/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  await dependencyInjection.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavigationBarProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: const BixosApp(),
    ),
  );
}

class BixosApp extends StatelessWidget {
  const BixosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bixos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavigationBarPage(),
    );
  }
}
