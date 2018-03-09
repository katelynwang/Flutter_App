import 'package:flutter/material.dart';
import '../Material/Zoomable_image.dart';

var assetCalculations = new AssetImage('images/calculations.png');
var imageCalculations = new ZoomableImage(assetCalculations, scale: 16.0, backgroundColor: Colors.grey,);

class Calculations extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Calculations'),
      ),

      body: new Container(
        child: new Column(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(30.0),
              child: new Text('Here is the result of calculations :', style: new TextStyle(fontSize: 20.0),),
            ),
            imageCalculations,
          ],
        ),
      ),
    );
  }
}