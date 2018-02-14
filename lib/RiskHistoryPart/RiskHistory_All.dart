import 'package:flutter/material.dart';

import '../Material/MenuDrawer.dart';

class RiskHistory_All extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new MenuDrawer(),
      ),
      appBar: new AppBar(
//        leading: new IconButton(
//          icon: new Icon(Icons.arrow_drop_down_circle, size: 42.0, color: Colors.white,),
//          onPressed: null),
        title: new Text(
          'All Risk Hisotry',
          style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white), textScaleFactor: 0.6,
        ),
      ),

      body: new Column(
        children: <Widget>[
          new Container(
            alignment: Alignment.center,
            child: new Column(
              children: <Widget>[
                new Table(
                  children: <TableRow>[
                    new TableRow(
                      children: <Widget>[
                        new TableCell(child: new Text('1aaaaa')),
                        new TableCell(child: new Text('1bbbbb')),
                        new TableCell(child: new Text('1ccccc')),
                      ]
                    ),
                    new TableRow(
                        children: <Widget>[
                          new TableCell(child: new Text('2aaaaa')),
                          new TableCell(child: new Text('2bbbbb')),
                          new TableCell(child: new Text('2ccccc')),
                        ]
                    ),
                    new TableRow(
                        children: <Widget>[
                          new TableCell(child: new Text('3aaaaa')),
                          new TableCell(child: new Text('3bbbbb')),
                          new TableCell(child: new Text('3ccccc')),
                        ]
                    )
                  ],
                )
              ],
            )
          )
        ],
      ),
    );
  }
}