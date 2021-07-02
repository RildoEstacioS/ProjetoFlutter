import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  Widget _criarDrawerFundo() =>
      Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.deepPurple,
                Colors.white,
                Colors.white,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)));

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Stack(
          children: <Widget>[
            _criarDrawerFundo(),
            ListView(
              padding: EdgeInsets.only(left: 32.0, top: 16.0),
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  padding: EdgeInsets.fromLTRB(0.0, 45.0, 16.0, 8.0),
                  height: 200,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 0.0,
                        left: 0.0,
                        child: Text(
                          "Seja\nBem-Vindos!",
                          style: TextStyle(
                              fontSize: 34.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                          left: 0.0,
                          bottom: 0.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Olá,",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              GestureDetector(
                                  child: Text(
                                    "Entre ou cadastra-se:",
                                    style: TextStyle(
                                        color: Theme
                                            .of(context)
                                            .primaryColor,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onTap: () {
                                    return print("Botão de Cadastrar do Drawer");
                                  }),
                            ],
                          ))
                    ],
                  ),
                ),
                Divider(),
                DrawerItems(Icons.home, "Início"),
                DrawerItems(Icons.location_on, "Lojas"),
                DrawerItems(Icons.favorite, "Favoritos"),
                DrawerItems(Icons.list, "Pedidos"),
                DrawerItems(Icons.construction, "Configurações"),
              ],
            )
          ],
        ));
  }
}

class DrawerItems extends StatelessWidget {

  final IconData icon;
  final String text;

  DrawerItems(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){
          return print("Evento dos Items do Drawer");
        },
        child: Container(
          height: 60.0,
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                size: 32.0,
                color: Colors.black,
              ),
              SizedBox(
                width: 32.0,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

