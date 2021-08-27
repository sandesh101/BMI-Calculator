import 'package:flutter/material.dart';

class BmiUI extends StatefulWidget {
  @override
  _BmiUIState createState() => _BmiUIState();
}

class _BmiUIState extends State<BmiUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181823),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('BMI Calculator'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 130,
                child: TextField(
                  style: TextStyle(color: Colors.white70, fontSize: 30),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Height',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 130,
                child: TextField(
                  style: TextStyle(color: Colors.white70, fontSize: 30),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Weight',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Calculate',
                style: TextStyle(fontSize: 30, color: Colors.white60),
              ),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
