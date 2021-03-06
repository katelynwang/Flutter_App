import 'package:flutter/material.dart';

import '../Material/all.dart';
import '../Material/globals.dart' as globals;

//void main() => runApp(new MaterialApp(
//  title: 'View Patient Reports',
//    home: new ViewPatientReports(),
//));

class ViewPatientReports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    Decoration rowDeco = new Decoration();
    return new Scaffold(
      endDrawer: new Drawer(
        child: new MenuDrawer(),
      ),
      appBar: new AppBar(
//        leading: new IconButton(
//          icon: new Icon(Icons.arrow_drop_down_circle, size: 42.0, color: Colors.white,),
//          onPressed: null),
        title: new Text(
          'View Patient Reports', textScaleFactor: globals.textScaleFactor,
          style: Theme
              .of(context)
              .textTheme
              .display1
              .copyWith(color: Colors.white),
        ),
      ),

      body: new Container(
        padding: new EdgeInsets.only(top: 20.0, left: 2.0),
        child: new Table( //TODO: horizontal view
            columnWidths: const <int, TableColumnWidth>{
              0: const FixedColumnWidth(190.0),
              1: const FixedColumnWidth(100.0),
              2: const FixedColumnWidth(70.0),
            },
            border: new TableBorder(
                top: new BorderSide(color: const Color(0x42000000), width: 1.0),
                bottom: new BorderSide(
                    color: const Color(0x42000000), width: 1.0),
                left: new BorderSide(
                    color: const Color(0x42000000), width: 1.0),
                right: new BorderSide(
                    color: const Color(0x42000000), width: 1.0),
                verticalInside: new BorderSide(
                    width: 1.0, color: const Color(0x42000000)),
                //Colors.black45
                horizontalInside: new BorderSide(
                    width: 1.0, color: const Color(0x61000000))
            ),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,

            children: <TableRow>[
              new TableRow(
                  children: <Widget>[
                    new TableCell(child: new Text(
                        '  Ordered Tests',
                        textScaleFactor: globals.textScaleFactor,
                        style: new TextStyle(height: 1.8))),
                    new TableCell(child: new Text(
                        'Date', textScaleFactor: globals.textScaleFactor,
                        textAlign: TextAlign.center,
                        style: new TextStyle(height: 1.8))),
                    new TableCell(child: new Text(
                        'Time', textScaleFactor: globals.textScaleFactor,
                        textAlign: TextAlign.center,
                        style: new TextStyle(height: 1.8)))
                  ],
                  decoration: new BoxDecoration(color: const Color(0xFFE0E0E0))
              ),
              new TableRow(
                  children: <Widget>[
                    new TableCell(child: new FlatButton(
                      onPressed: () {Navigator.push(context, new MaterialPageRoute(builder: (_) => new CBCReport(),));},
                        child: new Text('  CBC with Differential',
                            textScaleFactor: globals.textScaleFactor,
                            style: new TextStyle(height: 1.5)))),
                    new TableCell(child: new Text(
                        '02/21/2018', textScaleFactor: globals.textScaleFactor,
                        textAlign: TextAlign.center,
                        style: new TextStyle(height: 1.5))),
                    new TableCell(child: new Text(
                        '13:33', textScaleFactor: globals.textScaleFactor,
                        textAlign: TextAlign.center,
                        style: new TextStyle(height: 1.5)))
                  ]
              ),
              new TableRow(
                  children: <Widget>[
                    new TableCell(child: new FlatButton(onPressed: null,
                        child: new Text('  CRP (C-Reactive Protein)',
                            textScaleFactor: globals.textScaleFactor,
                            style: new TextStyle(height: 1.5)))),
                    new TableCell(child: new Text(
                        '02/21/2018', textScaleFactor: globals.textScaleFactor,
                        textAlign: TextAlign.center,
                        style: new TextStyle(height: 1.5))),
                    new TableCell(child: new Text(
                        '13:33', textScaleFactor: globals.textScaleFactor,
                        textAlign: TextAlign.center,
                        style: new TextStyle(height: 1.5)))
                  ]
              ),
              new TableRow(
                  children: <Widget>[
                    new TableCell(child: new FlatButton(onPressed: null,
                        child: new Text('  Clotting Studies',
                            textScaleFactor: globals.textScaleFactor,
                            style: new TextStyle(height: 1.5)))),
                    new TableCell(child: new Text(
                        '02/21/2018', textScaleFactor: globals.textScaleFactor,
                        textAlign: TextAlign.center,
                        style: new TextStyle(height: 1.5))),
                    new TableCell(child: new Text(
                        '13:33', textScaleFactor: globals.textScaleFactor,
                        textAlign: TextAlign.center,
                        style: new TextStyle(height: 1.5)))
                  ]
              ),
              new TableRow(
                  children: <Widget>[
                    new TableCell(child: new FlatButton(onPressed: null,
                        child: new Text('  Electrolytes',
                            textScaleFactor: globals.textScaleFactor,
                            style: new TextStyle(height: 1.5)))),
                    new TableCell(child: new Text(
                        '02/21/2018', textScaleFactor: globals.textScaleFactor,
                        textAlign: TextAlign.center,
                        style: new TextStyle(height: 1.5))),
                    new TableCell(child: new Text(
                        '13:33', textScaleFactor: globals.textScaleFactor,
                        textAlign: TextAlign.center,
                        style: new TextStyle(height: 1.5)))
                  ]
              )
            ]

        ),
      ),
    );
  }
}