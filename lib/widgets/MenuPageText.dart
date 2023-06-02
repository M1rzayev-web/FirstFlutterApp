import 'package:flutter/material.dart';
import 'package:noldanmobililova/pages/CartPage.dart';
import 'package:noldanmobililova/pages/GoogleMapPage.dart';
import 'package:noldanmobililova/pages/HomePage.dart';
import 'package:noldanmobililova/pages/ItemPage.dart';
import 'package:noldanmobililova/pages/NotificationPage.dart';
// import 'package:noldanmobililova/pages/NotificationPage.dart';
// import 'package:noldanmobililova/pages/IkkinchiSahifaPage.dart';

class MenuPageText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Text('Home'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ItemPage()),
              );
            },
            child: Text('Item'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
            },
            child: Text('Karzinka'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationPage()),
              );
            },
            child: Text('Notification'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GoogleMapPage()),
              );
            },
            child: Text('Bizning manzil'),
          ),
        ],
      ),
    );
  }
}
