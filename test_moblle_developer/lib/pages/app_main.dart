import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_moblle_developer/pages/login_page.dart';


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // importante:::
    // cambia el color de la hora y demas del dispostivo o hacer otras modificaciones personalizadas
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: LoginPage() ,
    );
  }
}
