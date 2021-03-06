import 'package:flutter/material.dart';

class BmiUI extends StatefulWidget {
  @override
  _BmiUIState createState() => _BmiUIState();
}

class _BmiUIState extends State<BmiUI> {
  final TextEditingController _height = TextEditingController();
  final TextEditingController _weight = TextEditingController();
  double _result = 0.0;
  String _toShow = "";
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
                  controller: _height,
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
                  controller: _weight,
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
              onPressed: () {
                double _h = double.parse(_height.text);
                double _w = double.parse(_weight.text);

                setState(
                  () {
                    _result = _w / (_h * _h) * (10000);
                    if (_result > 25) {
                      _toShow = 'OverWeight';
                    } else if (_result >= 18.5 && _result <= 25) {
                      _toShow = 'Normal';
                    } else {
                      _toShow = 'UnderWeight';
                    }
                  },
                );
              },
              child: Text(
                'Calculate',
                style: TextStyle(fontSize: 30, color: Colors.white60),
              ),
            ),
          ),
          SizedBox(height: 50),
          Container(
            child: Text(
              _result.toStringAsFixed(2),
              style: TextStyle(color: Colors.white70, fontSize: 90),
            ),
          ),
          SizedBox(height: 50),
          Visibility(
            visible: _toShow.isNotEmpty,
            child: Container(
              child: Text(
                _toShow,
                style: TextStyle(color: Colors.white, fontSize: 45),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
