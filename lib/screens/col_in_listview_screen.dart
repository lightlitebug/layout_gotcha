import 'package:flutter/material.dart';
import 'package:layout_gotcha/widgets/big_text.dart';

class ColInListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column in ListView'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.blue,
            child: BigText('This is the 1st child'),
          ),
          Container(
            color: Colors.green,
            child: BigText('This is the 2nd child'),
          ),
          Column(
            children: <Widget>[
              Container(
                color: Colors.amber[50],
                child: BigText('1: child in Column'),
              ),
              SizedBox(height: 40),
              Container(
                color: Colors.amber[100],
                child: BigText('2: child in Column'),
              ),
              SizedBox(height: 40),
              Container(
                color: Colors.amber[200],
                child: BigText('3: child in Column'),
              ),
              SizedBox(height: 40),
              Container(
                color: Colors.amber[300],
                child: BigText('4: child in Column'),
              ),
              SizedBox(height: 40),
              Container(
                color: Colors.amber[400],
                child: BigText('5: child in Column'),
              ),
              SizedBox(height: 40),
              Container(
                color: Colors.amber[400],
                child: BigText('6: child in Column'),
              ),
              SizedBox(height: 40),
              Container(
                color: Colors.amber[400],
                child: BigText('7: child in Column'),
              ),
              SizedBox(height: 40),
              Container(
                color: Colors.amber[400],
                child: BigText('8: child in Column'),
              ),
              SizedBox(height: 40),
              Container(
                color: Colors.amber[400],
                child: BigText('9: child in Column'),
              ),
              SizedBox(height: 40),
              Container(
                color: Colors.amber[400],
                child: BigText('10: child in Column'),
              ),
              SizedBox(height: 40),
              Container(
                color: Colors.amber[400],
                child: BigText('11: child in Column'),
              ),
              SizedBox(height: 40),
              Container(
                color: Colors.amber[400],
                child: BigText('12: child in Column'),
              ),
              SizedBox(height: 40),
              Container(
                color: Colors.amber[400],
                child: BigText('13: child in Column'),
              ),
              SizedBox(height: 40),
              Container(
                color: Colors.amber[400],
                child: BigText('14: child in Column'),
              ),
              SizedBox(height: 40),
              Container(
                color: Colors.amber[400],
                child: BigText('15: child in Column'),
              ),
              SizedBox(height: 40),
              Expanded(
                child: Container(
                  color: Colors.amber[400],
                  child: BigText('16: child in Column'),
                ),
              ),
              SizedBox(height: 40),
            ],
          )
        ],
      ),
    );
  }
}
