import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dados Pessoais",
          style: TextStyle(
              color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: <Widget>[
          _criarFundoTela(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Nome Completo:",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black38)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black38)),
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    style: TextStyle(color: Colors.black38, fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "E-mail:",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black38)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black38)),
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    style: TextStyle(color: Colors.black38, fontSize: 18.0),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Cpf:",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black38)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black38)),
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    style: TextStyle(color: Colors.black38, fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Telefone:",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black38)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black38)),
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    style: TextStyle(color: Colors.black38, fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Senha:",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black38)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black38)),
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    style: TextStyle(color: Colors.black38, fontSize: 18.0),
                    obscureText: true,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 5.0),
                        child: ElevatedButton(
                          child: Text("Salvar",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              )),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(100, 35),
                              primary: Colors.lightGreen,
                              onPrimary: Colors.white,
                              elevation: 5.0),
                          onPressed: () {
                            print('botão de salvar');
                          },
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 10.0),
                          child: ElevatedButton(
                            child: Text("Limpar Campos",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            )),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 35),
                            primary: Colors.deepPurple,
                            onPrimary: Colors.white,
                            elevation: 5.0),
                        onPressed: () {
                          print('Limpar');
                        },
                      ),
                    ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _criarFundoTela() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [

        Colors.white38,
        Colors.white38,
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)));
}
