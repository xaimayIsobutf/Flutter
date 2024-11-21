import 'dart:js_util';
import 'package:flutter/material.dart';
import 'package:lect1/Login.dart';
import 'package:lect1/Loginnew.dart';
import 'package:lect1/home.dart';
import 'package:lect1/myHomePage.dart';

class menubottom extends StatefulWidget {
  const menubottom({super.key});

  @override
  State<menubottom> createState() => _menubottomState();
}

class _menubottomState extends State<menubottom> {
  int _index = 0;

  void selectItem(val) {
    if (val == "share") {
      print(val);
      Navigator.of(context).push(MaterialPageRoute(builder: (c) => Login()));
    } else if (val == "settings") {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (c) => myHomePage()));
    } else if (val == "exit") {
      print(val);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Show Bottom Bar"),
        centerTitle: true,
        actions: [
          PopupMenuButton(
              onSelected: selectItem,
              color: Colors.black,
              itemBuilder: (c) => [
                    PopupMenuItem(
                        value: "share",
                        child: ListTile(
                          leading: Icon(
                            Icons.share,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Share",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    PopupMenuItem(
                      value: "settings",
                      child: ListTile(
                        leading: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Settings",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: "message",
                      child: ListTile(
                        leading: Icon(
                          Icons.message,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Message",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (c) => LogInNew()));
                        },
                      ),
                    ),
                    PopupMenuItem(
                        value: "exit",
                        child: ListTile(
                          leading: Icon(
                            Icons.exit_to_app,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Exit",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ])
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Badge(
                  backgroundColor: Colors.black,
                  label: Text("15"),
                  child: Icon(Icons.message)),
              label: "Message"),
          BottomNavigationBarItem(
            icon: Badge(
              label: Text(
                "9",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              child: Icon(Icons.call),
            ),
            label: "Call",
          ),
        ],
        selectedItemColor: Colors.amber,
        selectedFontSize: 22,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
            if (index == 0) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (c) => home()));
            } else if (index == 1) {
              print("Message");
            } else if (index == 2) {
              print("Call");
            }
          });
        },
      ),
    );
  }
}
