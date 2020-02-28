import 'package:demo_flutter_sample/pages/HomePageButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo_flutter_sample/pages/myprofile.dart';

class HomePage extends StatelessWidget {

  var listButton = Column(
    children: <Widget>[
      HomePageButton(iconData: Icons.face, iconName: 'Cộng đồng'),
      SizedBox(height: 10),
      HomePageButton(iconData: Icons.account_circle, iconName: 'Thông tin cá nhân', scene: MyProfile()),
    ],
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
//        color: Colors.amberAccent,
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: listButton,
        ),
      ),
    );
  }
}
