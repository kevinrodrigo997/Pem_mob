import 'package:flutter/material.dart';
import 'hasil.dart';

class HitungLuasSegitiga extends StatefulWidget {
  @override
  _HitungLuasSegitigaState createState() => _HitungLuasSegitigaState();
}

class _HitungLuasSegitigaState extends State<HitungLuasSegitiga> {
  double _alas = 0;
  double _tinggi = 0;
  double _luas = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.help_outline_outlined),
              iconSize: 30,
              onPressed: () {})
        ],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        backgroundColor: Colors.grey[600],
        title: Text(
          'Aplikasi Matematika',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text(
              "Menghitung Luas Segitiga",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            Padding(padding: EdgeInsets.all(15)),
            Row(
              children: [
                Container(
                    height: 40,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ALAS   :",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )),
                Padding(padding: EdgeInsets.all(5)),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.blue[400],
                        filled: true,
                        hintText: "Masukan Nilai Alas",
                        hintStyle:
                            TextStyle(fontSize: 15, color: Colors.black38),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40))),
                    onChanged: (txt) {
                      setState(() {
                        _alas = double.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 3,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                    height: 40,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("TINGGI :", style: TextStyle(color: Colors.white))
                      ],
                    )),
                Padding(padding: EdgeInsets.all(5)),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.blue[400],
                        filled: true,
                        hintText: "Masukan Nilai Tinggi",
                        hintStyle:
                            TextStyle(fontSize: 15, color: Colors.black38),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40))),
                    onChanged: (txt) {
                      setState(() {
                        _tinggi = double.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 3,
                  ),
                )
              ],
            ),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Hasil(luas: _luas)));

                setState(() {
                  _luas = 0.5 * _alas * _tinggi;
                });
              },
              child: Text("HITUNG"),
            ),
          ],
        ),
      ),
    );
  }
}
