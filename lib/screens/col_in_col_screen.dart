import 'package:flutter/material.dart';
import 'package:layout_gotcha/widgets/big_text.dart';

class ColInColScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column in Column'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.red,
            child: BigText('This is the 1st child'),
          ),
          SizedBox(height: 20.0),
          Container(
            color: Colors.green,
            child: BigText('This is the 2nd child'),
          ),
          SizedBox(height: 20.0),
          Container(
            color: Colors.blue,
            child: BigText('This is the 3rd child, the lucky number'),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.red,
                  child: BigText('This is the 1st child'),
                ),
                Container(
                  color: Colors.green,
                  child: BigText('This is the 2nd child'),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: BigText('This is the 3rd child'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
