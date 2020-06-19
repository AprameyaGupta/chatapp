import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  final String username;
  AboutPage(this.username);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text("ChatterBox"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          alignment: Alignment.center,
          child: Text(
            "Hey $username, we feel good to have user like you. Enjoy chatting with your buddy's with Chatter-Box!!",
            textScaleFactor: 1.5,
          ),
        )
    );
  }
}
