import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Navigation.dart';
import 'Provider/UserProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider1()),
        ChangeNotifierProvider(create: (context) => UserProvider2()),
        ChangeNotifierProvider(create: (context) => UserProvider3()),
        ChangeNotifierProvider(create: (context) => UserProvider4()),
        ChangeNotifierProvider(create: (context) => UserProvider5()),
      ],
      child: MaterialApp(
        home: const HomePage(),
      ),
    );
  }
}
