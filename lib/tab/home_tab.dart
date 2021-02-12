import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _criarCorpoAtras() =>
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.deepPurple,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        );

    return Stack(
        children: <Widget>[
          _criarCorpoAtras(),
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                floating: true,
                snap: true,
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: const Icon(Icons.fastfood, color: Colors.deepPurple),
                  centerTitle: true,
                ),
              )
            ],
          )
        ],
      );
  }
}