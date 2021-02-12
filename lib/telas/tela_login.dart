import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loja_virtual_aula/telas/tela_cadastro_cliente.dart';
import 'package:loja_virtual_aula/telas/tela_home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _loginController = TextEditingController();
  final _senhaController = TextEditingController();

  bool _ocultarSenha = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pede Comer', style: TextStyle(color: Colors.deepPurple)),
          centerTitle: true,
        ),
      backgroundColor: Colors.deepPurple,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10.0, 100.0, 10.0, 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Positioned(
                      left: 2.0,
                      top: 3.0,
                      child: Icon(
                        Icons.fastfood,
                        size: 150.0,
                        color: Colors.black54,
                      ),
                    ),
                    Icon(
                      Icons.fastfood,
                      size: 150.0,
                      color: Colors.white,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100.0, bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Login:",
                      fillColor: Colors.white,
                      filled: true,
                      labelStyle: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: TextStyle(color: Colors.deepPurple, fontSize: 18.0),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        _ocultarSenha ? Icons.remove_red_eye : Icons.security,
                        color: Colors.deepPurple,
                      ),
                      onPressed: () {
                        setState(() {
                          _ocultarSenha = !_ocultarSenha;
                        });
                      },
                    ),
                    labelText: "Senha:",
                    fillColor: Colors.white,
                    filled: true,
                    labelStyle: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  obscureText: _ocultarSenha,
                  style: TextStyle(color: Colors.deepPurple, fontSize: 18.0),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 40.0, left: 2.0, right: 2.5),
                        child: RaisedButton(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          color: Colors.white,
                          child: Text(
                            "Confirmar",
                            style: TextStyle(fontSize: 18.0),
                          ),
                          textColor: Colors.deepPurple,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 40.0, left: 2.5, right: 2.0),
                        child: RaisedButton(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          color: Colors.deepPurpleAccent,
                          child: Text(
                            "Realizar Cadastro",
                            style: TextStyle(fontSize: 18.0),
                          ),
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cadastro()));
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}

