import 'package:flutter/material.dart';
import 'package:layout_gotcha/screens/col_in_col_screen.dart';
import 'package:layout_gotcha/screens/col_in_listview_screen.dart';
import 'package:layout_gotcha/screens/listview_in_col_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Gotcha'),
      ),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                child: Text('Column in Column'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ColInColScreen();
                    }),
                  );
                },
              ),
              RaisedButton(
                child: Text('Column in ListView'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ColInListViewScreen();
                    }),
                  );
                },
              ),
              RaisedButton(
                child: Text('ListView in Column in SingleChildScrollView'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ListViewInColScreen();
                    }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
