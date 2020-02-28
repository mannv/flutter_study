import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageButton extends StatelessWidget {
  final IconData iconData;

  final String iconName;

  HomePageButton({this.iconData, this.iconName, this.scene});

  Widget scene;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (scene == null) {
          AlertDialog dialog = AlertDialog(
            title: Text('Thông báo'),
            content: Text('Chưa khai báo scene để chuyển trang'),
          );
          showDialog(context: context, builder: (context) => dialog);
          return;
        }
        Navigator.push(context, MaterialPageRoute(builder: (context) => scene));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.cyan,
//          border: Border.all(width: 1, color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(100.0))
        ),
//      padding: const EdgeInsets.only(top: 8, bottom: 8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(iconData, color: Colors.red, size: 40),
              Text(iconName, style: TextStyle(color: Colors.white, fontSize: 20))
            ],
          ),
        ),
      ),
    );
  }
}
