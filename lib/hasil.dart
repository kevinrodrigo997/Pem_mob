import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  final double luas;

  Hasil({this.luas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.help_outline_outlined),
              iconSize: 30,
              onPressed: () {})
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.grey[600],
        title: Text(
          'Aplikasi Matematika',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10, left: 90, right: 90),
        height: 180,
        width: 180,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: (Text(
                  'HASIL',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
              ),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Container(
              child: Column(
                children: [
                  Text("  LUAS SEGITIGA =  ",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              child: Column(
                children: [
                  Text("$luas",
                      style: TextStyle(color: Colors.white, fontSize: 50)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
