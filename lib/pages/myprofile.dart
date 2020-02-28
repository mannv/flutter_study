import 'package:demo_flutter_sample/pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
//  String fullName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile', style: TextStyle(color: Colors.white)),
      ),
      body: ProfileView(),
    );
  }
}

class ProfileView extends StatefulWidget {
  @override
  ProfileViewState createState() => ProfileViewState();
}

class ProfileViewState extends State<ProfileView> {
  String fullName = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.cyanAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  hintText: 'Vui long nhap ten...',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 1))),
              onSubmitted: (String str) {
                print("str: " + str);
                setState(() {
                  fullName = str;
                });
              },
              onChanged: (String str) {
                setState(() {
                  fullName = str;
                });
              },
            ),
            Text("Your name: " + fullName)
          ],
        ),
      ),
    );
  }
}
