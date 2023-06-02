import 'package:flutter/material.dart';
import 'package:noldanmobililova/widgets/MenuPageText.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Center(
        child: MenuPageText(), // MenuPageTextni chaqirish
      ),
      // body: Center(
      //   child: Text(
      //     'Menu Page',
      //     style: TextStyle(fontSize: 24),
      //   ),
      // ),
    );
  }
}
