import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loja_virtual_aula/telas/tela_cadastro_cliente.dart';
import 'package:loja_virtual_aula/telas/tela_home.dart';
import 'package:loja_virtual_aula/telas/tela_login.dart';
import 'package:loja_virtual_aula/telas/tela_splash.dart';


void main() {
  runApp(MaterialApp(
    title: "Testando TelaHome",
    theme: ThemeData(
      hintColor: Colors.white,
      primarySwatch: Colors.deepPurple,
      primaryColor: Colors.white,
      inputDecorationTheme: InputDecorationTheme(
      ),
    ),
    debugShowCheckedModeBanner: false,
    home: Splash()
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
}


