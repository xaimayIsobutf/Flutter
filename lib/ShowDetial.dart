import 'package:flutter/material.dart';
import 'package:lect1/model.dart';

class ShowDetial extends StatelessWidget {
  final shirt sh;
  const ShowDetial({super.key, required this.sh});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sh.name),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 400,
              child: Image.network(
                sh.urlshirt,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              sh.price,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
