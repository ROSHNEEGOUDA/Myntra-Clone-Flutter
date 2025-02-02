import 'package:flutter/material.dart';
import 'package:flutter_myntra_clone/screens/home_screen.dart';
import 'package:flutter_myntra_clone/screens/login/login.dart';
import 'package:flutter_myntra_clone/screens/login/otp.dart';
import 'package:flutter_myntra_clone/screens/Advance product/advance_product_detail.dart';
import 'package:flutter_myntra_clone/screens/products/product_list.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Myntra',
      theme: ThemeData(
        primaryColor: Colors.pinkAccent,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
      ),
      home: Login(),
      routes: {
        Login.routeName: (ctx) => Login(),
        Otp.routeName: (ctx) => Otp(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
        ProductList.routeName: (ctx) => ProductList(),
        ProductDetails.routeName: (ctx) => ProductDetails(),
      },
    );
  }
}
