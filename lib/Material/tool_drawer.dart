import 'package:flutter/material.dart';

import 'globals.dart' as globals;

class ToolDrawer extends StatefulWidget {
  @override
  ToolDrawerState createState() => new ToolDrawerState();
}

class ToolDrawerState extends State<ToolDrawer> {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new ExpansionTile(
          title: new Text('Text Size', textScaleFactor: globals.textScaleFactor,
              style: new TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            new Row(
              children: <Widget>[
                const SizedBox(width: 5.0,),
                new Radio<double>(
                  value: 0.8,
                  groupValue: globals.textScaleFactor,
                  onChanged: _applyScaleFactor,
                ),
                new Container(child: new Text(
                    'Small', textScaleFactor: globals.textScaleFactor),),
              ],
            ),

            new Row(
              children: <Widget>[
                const SizedBox(width: 5.0,),
                new Radio<double>(
                  value: 1.0,
                  groupValue: globals.textScaleFactor,
                  onChanged: _applyScaleFactor,

                ),
                new Container(child: new Text(
                    'Normal', textScaleFactor: globals.textScaleFactor),),
              ],
            ),

            new Row(
              children: <Widget>[
                const SizedBox(width: 5.0,),
                new Radio<double>(
                  value: 1.8,
                  groupValue: globals.textScaleFactor,
                  onChanged: _applyScaleFactor,
                ),
                new Container(child: new Text(
                    'Large', textScaleFactor: globals.textScaleFactor),),
              ],
            ),
          ],
        ),

        new ExpansionTile(
          title: new Text('Theme', textScaleFactor: globals.textScaleFactor,
              style: new TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            new Row(
              children: <Widget>[
                const SizedBox(width: 5.0,),
                new Radio<bool>(
                  value: true,
                  groupValue: globals.useLightTheme,
                  onChanged: _applyTheme,
                ),
                new Container(child: new Text(
                    'Light', textScaleFactor: globals.textScaleFactor),),
              ],
            ),

            new Row(
              children: <Widget>[
                const SizedBox(width: 5.0,),
                new Radio<bool>(
                  value: false,
                  groupValue: globals.useLightTheme,
                  onChanged: _applyTheme,
                ),
                new Container(child: new Text(
                    'Dark', textScaleFactor: globals.textScaleFactor),),
              ],
            ),
          ],
        ),

        const Divider(),

        new ExpansionTile(
          title: new Text('S.T.A.B.L.E',
              textScaleFactor: globals.textScaleFactor,
              style: new TextStyle(fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
          backgroundColor: Theme
              .of(context)
              .accentColor
              .withOpacity(0.025),
          children: <Widget>[
            new ListTile(
              title: new Text(
                  '    Sugar', textScaleFactor: globals.textScaleFactor,
                  style: const TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/Stable/Sugar');
              },
            ),
            new ListTile(title: new Text(
                '    Temperature', textScaleFactor: globals.textScaleFactor,
                style: const TextStyle(color: Colors.black)),),
            new ListTile(title: new Text(
                '    Airway', textScaleFactor: globals.textScaleFactor,
                style: const TextStyle(color: Colors.black)),),
            new ListTile(title: new Text(
                '    Blood Pressure', textScaleFactor: globals.textScaleFactor,
                style: const TextStyle(color: Colors.black)),),
            new ListTile(title: new Text(
                '    Lab Work', textScaleFactor: globals.textScaleFactor,
                style: const TextStyle(color: Colors.black)),),
            new ListTile(title: new Text('    Emotional Support',
                textScaleFactor: globals.textScaleFactor,
                style: const TextStyle(color: Colors.black)),)
          ],
        ),

      ],
    );
  }

  void _applyScaleFactor(double val) {
    setState(() {
      globals.textScaleFactor = val;
    });
  }

  void _applyTheme(bool val) {
    setState(() {
      globals.useLightTheme = val;
    });
  }
}