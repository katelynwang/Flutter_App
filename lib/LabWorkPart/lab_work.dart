import 'package:flutter/material.dart';

import '../Material/all.dart';
import '../Material/globals.dart' as globals;

//void main() => runApp(
//  new MaterialApp(
//    title: 'LabWork',
//    home: new LabWork(),
//  )
//);

class LabWork extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final Size screenSize = MediaQuery.of(context).size;
    final double distance = screenSize.width * 0.01;
    final double paddingVertical = screenSize.width * 0.08;
    final double paddingHorizontal = screenSize.width * 0.07;

    return new Scaffold(
      endDrawer: new Drawer(
        child: new MenuDrawer(),
      ),
      appBar: new AppBar(
        title: new Text("Lab Work", textScaleFactor: globals.textScaleFactor,),
      ),

      body: new StaggeredGridView.count(
        padding: new EdgeInsets.symmetric(vertical: paddingVertical, horizontal: paddingHorizontal,),
        primary: false,
        crossAxisCount: 4,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: <Widget>[
          new Container(
            color: Colors.blue.shade400,
            margin: new EdgeInsets.all(distance),
            child: new ListTile(
                title: new Text(
                  "View Recommended Test",
                  textScaleFactor: globals.textScaleFactor,
                  style: new TextStyle(color: Colors.white, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (_) => new ViewRecTest(),)
                  );
                }
            ),
          ),

          new Container(
            color: Colors.blue.shade300,
            margin: new EdgeInsets.all(distance),

            child: new ListTile(
                title: new Text(
                  "Order Additional Tests",
                  textScaleFactor: globals.textScaleFactor,
                  style: new TextStyle(color: Colors.white, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (_) => new OrderAdditionalTests(),)
                  );
                }
            ),
          ),

          new Container(
            color: Colors.blue.shade200,
            margin: new EdgeInsets.all(distance),

            child: new ListTile(
                title: new Text(
                  "Enter Patient Reports",
                  textScaleFactor: globals.textScaleFactor,
                  style: new TextStyle(color: Colors.white, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (_) => new EnterPatientReports(),)
                  );
                }
            ),
          ),

          new Container(
            color: Colors.blue.shade200,
            margin: new EdgeInsets.all(distance),

            child: new ListTile(
                title: new Text(
                  "View Patient Reports",
                  textScaleFactor: globals.textScaleFactor,
                  style: new TextStyle(color: Colors.white, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (_) => new ViewPatientReports(),)
                  );
                }
            ),
          ),

          new Container(
            color: Colors.blue.shade100,
            margin: new EdgeInsets.all(distance),

            child: new ListTile(
                title: new Text(
                  "View Recommended Medications",
                  textScaleFactor: globals.textScaleFactor,
                  style: new TextStyle(color: Colors.white, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (_) => new ViewRecMedications(),)
                  );
                }
            ),
          ),
        ],

        staggeredTiles: const <StaggeredTile>[
          const StaggeredTile.count(2, 3),
          const StaggeredTile.count(2, 2),
          const StaggeredTile.count(2, 2),
          const StaggeredTile.count(2, 3),
          const StaggeredTile.count(2, 2),
        ],
      ),
    );
  }


//  Widget build(BuildContext context) {
//    return new Scaffold(
//      endDrawer: new Drawer(
//        child: new MenuDrawer(),
//      ),
//      appBar: new AppBar(
//        title: new Text("Lab Work", textScaleFactor: globals.textScaleFactor,
//            style: new TextStyle(color: Colors.black),
//            textAlign: TextAlign.left),
//      ),
//
//      body: new Container(
//          child: new Center(
//            child: new Column(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
//              children: <Widget>[
//                new Container(
//                    margin: new EdgeInsets.only(bottom: 1.0),
//                    height: 50.0,
//                    child: new RaisedButton(
//                        child: new Text("View Recommended Test",
//                            textScaleFactor: globals.textScaleFactor,
//                            style: new TextStyle(
//                                color: Colors.black, fontSize: 20.0)),
//                        onPressed: () {
//                          Navigator.push(
//                              context,
//                              new MaterialPageRoute(
//                                builder: (_) => new ViewRecTest(),
//                              )
//                          );
//                        }
//                    )
//                ),
//
//                new Container(
//                    margin: new EdgeInsets.only(bottom: 1.0),
//                    height: 50.0,
//                    child: new RaisedButton(
//                        child: new Text("Order Additional Tests",
//                            textScaleFactor: globals.textScaleFactor,
//                            style: new TextStyle(
//                                color: Colors.black, fontSize: 20.0)),
//                        onPressed: () {
//                          Navigator.push(
//                              context,
//                              new MaterialPageRoute(
//                                builder: (_) => new OrderAdditionalTests(),
//                              )
//                          );
//                        }
//                    )
//                ),
//
//                new Container(
//                    margin: new EdgeInsets.only(bottom: 1.0),
//                    height: 50.0,
//                    child: new RaisedButton(
//                        child: new Text("Enter Patient Reports",
//                            textScaleFactor: globals.textScaleFactor,
//                            style: new TextStyle(
//                                color: Colors.black, fontSize: 20.0)),
//                        onPressed: () {
//                          Navigator.push(
//                              context,
//                              new MaterialPageRoute(
//                                builder: (_) => new EnterPatientReports(),
//                              )
//                          );
//                        }
//                    )
//                ),
//
//                new Container(
//                    margin: new EdgeInsets.only(bottom: 1.0),
//                    height: 50.0,
//                    child: new RaisedButton(
//                        child: new Text("View Patient Reports",
//                            textScaleFactor: globals.textScaleFactor,
//                            style: new TextStyle(
//                                color: Colors.black, fontSize: 20.0)),
//                        onPressed: () {
//                          Navigator.push(
//                              context,
//                              new MaterialPageRoute(
//                                builder: (_) => new ViewPatientReports(),
//                              )
//                          );
//                        }
//                    )
//                ),
//
//                new Container(
//                    margin: new EdgeInsets.only(bottom: 1.0),
//                    height: 50.0,
//                    child: new RaisedButton(
//                        child: new Text("View Recommended Medications",
//                            textScaleFactor: globals.textScaleFactor,
//                            style: new TextStyle(
//                                color: Colors.black, fontSize: 20.0)),
//                        onPressed: () {
//                          Navigator.push(
//                              context,
//                              new MaterialPageRoute(
//                                builder: (_) => new ViewRecMedications(),
//                              )
//                          );
//                        }
//                    )
//                ),
//              ],
//            ),
//          )
//      ),
//    );
//  }
}