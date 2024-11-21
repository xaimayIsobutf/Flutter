import 'package:flutter/material.dart';

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Colors.yellow,
            )),
        title: Text(
          'ລະບົບສັ່ງຈອງສິນຄ້າ',
          style: TextStyle(color: Colors.yellow.shade200, fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  counter = counter - 1;
                });
              },
              icon: Icon(Icons.remove)),
          SizedBox(
            width: 25,
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  counter = counter + 1;
                });
              },
              icon: Icon(Icons.add)),
          SizedBox(
            width: 45,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "ສະແດງຕັວເລກທີ່ນັບ",
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              "${counter}",
              style: TextStyle(fontSize: 50, color: Colors.yellow),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter = counter + 1;
          }); 
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
