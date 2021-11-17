import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'authentication/screens/auth_screen.dart';
import 'package:food_app/screens/home_screen.dart';
import 'package:food_app/screens/view_all_products.dart';

import 'authentication/bloc/login_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.red,
          scaffoldBackgroundColor: const Color.fromRGBO(0, 0, 0, 0),
          appBarTheme: AppBarTheme(backgroundColor: Colors.grey.shade900,
              centerTitle: true
          )

      ),
      home: RepositoryProvider(
        create: (context) => LoginRepository(),
        child: AuthScreen(),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (ctx) => HomeScreen(),
        ViewAllProducts.routeName: (ctx) => ViewAllProducts(),
      },
    );
  }
}