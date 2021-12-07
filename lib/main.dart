import 'package:flutter/material.dart';
import 'package:steel_trap_app/pages/admin/home_page_admin.dart';
import 'package:steel_trap_app/pages/dealer/home_page_dealer.dart';
import 'package:steel_trap_app/pages/fabricator/home_page_fabricator.dart';
import 'package:steel_trap_app/pages/login_page.dart';
import 'package:steel_trap_app/pages/register_page.dart';
import 'package:steel_trap_app/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff1F1D25),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xffFFFFFF),
        ),

          
      ),
      initialRoute: SignUpPage.routeName,
      routes: {
        SignUpPage.routeName:(context)=>SignUpPage(),
        SignInPage.routeName:(context)=>SignInPage(),
        RegisterPage.routeName:(context)=>RegisterPage(),
        AdminHome.routeName:(context)=>AdminHome(),
        DealerHome.routeName:(context)=>DealerHome(),
        FabricatorHome.routeName:(context)=>FabricatorHome(),
      },
    );
  }
}
