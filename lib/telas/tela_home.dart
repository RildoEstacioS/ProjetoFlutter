import 'package:flutter/material.dart';
import 'package:loja_virtual_aula/tab/home_tab.dart';
import 'package:loja_virtual_aula/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = new PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(),
        ),
      ],
    );
  }
}
