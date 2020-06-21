import 'package:flutter/material.dart';
import 'package:layout_gotcha/widgets/big_text.dart';

class ListViewInColScreen extends StatelessWidget {
  final List<String> items = List.generate(100, (index) => '$index-th child');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView in Column'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            BigText('This is the 1st child'),
            SizedBox(height: 40.0),
            BigText('This is the 2nd child'),
            SizedBox(height: 40.0),
            ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, idx) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: BigText(items[idx]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
