import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loja_virtual_aula/telas/tela_cadastro_cliente.dart';
import 'tela_login.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 200.0, left: 62.0),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Positioned(
                  left: 2.0,
                  top: 3.0,
                  child: Icon(
                    Icons.fastfood,
                    size: 150.0,
                    color: Colors.black54,),
                ),
                Icon(
                  Icons.fastfood,
                  size: 150.0,
                  color: Colors.white,)],
            ),
            Padding(padding: EdgeInsets.all(20.0)),
            GestureDetector(
              child: Text("Pede Comer", style: TextStyle(shadows: <Shadow>[
                Shadow(
                  offset: Offset(2.0, 3.0),
                  blurRadius: 0.0,
                  color: Colors.black54)],
                  color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
              ),
              onTap:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Login()));
              }
            ),

            Padding(
                padding: EdgeInsets.only(top: 50.0, bottom: 10),
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    strokeWidth: 5.0,
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
