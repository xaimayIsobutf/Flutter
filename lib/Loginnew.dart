import 'package:flutter/material.dart';

class LogInNew extends StatefulWidget {
  const LogInNew({super.key});

  @override
  State<LogInNew> createState() => _LogInNewState();
}

class _LogInNewState extends State<LogInNew> {
  Widget TextUserName() {
    return Container(
      margin: EdgeInsets.fromLTRB(50, 30, 50, 10),
      child: TextField(
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
            labelText: "Username",
            prefixIcon: Icon(Icons.person),
            filled: true,
            fillColor: Colors.white),
      ),
    );
  }

  Widget TextPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(50, 5, 50, 10),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
            labelText: "Password",
            prefixIcon: Icon(Icons.key_outlined),
            filled: true,
            fillColor: Colors.white),
      ),
    );
  }

  Widget buttonLogin() {
    return SizedBox(
      width: 80,
      height: 40,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.black, elevation: 10),
          onPressed: () {},
          child: Text('Log In')),
    );
  }

  Widget buttoncancel() {
    return SizedBox(
      width: 80,
      height: 40,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.orange.shade700, elevation: 10),
          onPressed: () {},
          child: Text('Cancel')),
    );
  }

  Widget ShowButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        buttonLogin(),
        SizedBox(
          width: 20.0,
        ),
        buttoncancel(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
                colors: [Colors.white, Colors.blue.shade700], radius: 1.0)),
        child: Column(
          children: [
            Center(
                child: Container(
                    width: 180,
                    height: 180,
                    child: Image.asset("images/ic_shop.png"))),
            Text(
              "CW  Shoping",
              style: TextStyle(fontFamily: "Lobster", fontSize: 30),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextUserName(),
            TextPassword(),
            SizedBox(
              height: 30.0,
            ),
            ShowButton(),
          ],
        ),
      ),
    );
  }
}
