import 'package:flutter/material.dart';

class lect1 extends StatefulWidget {
  const lect1({super.key});

  @override
  State<lect1> createState() => _lect1State();
}

class _lect1State extends State<lect1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade700,
        child: Container(
          margin: EdgeInsets.all(10.0),
          color: Colors.yellow.shade600,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    color: Colors.green.shade500,
                    width: 190,
                    height: 180,
                    child: Center(
                      child: Text(
                        "T",
                        style: TextStyle(
                            fontSize: 100,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    color: Colors.green.shade500,
                    width: 190,
                    height: 180,
                    child: Center(child: Icon(Icons.star)),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow.shade900,
                  width: 300,
                  height: 300,
                  child: Center(
                    child: Text(
                      "T",
                      style: TextStyle(
                          fontSize: 100,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
