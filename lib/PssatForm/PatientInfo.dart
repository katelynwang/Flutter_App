import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Material/MenuDrawer.dart';

class PatientData {
  String birthWeight = '';
  String birthOrder = '';
  String gender = '';
  String estGA = '';
  String growth = '';
  String babyAdmittedFrom = '';
  String resuscitationAtBirth = '';
  String indicationsForReferral = '';
  String resuscitationMeds = '';
  String otherMeds = '';
  String at1min = '';
  String at5min = '';
  String at10min = '';
  String at15min = '';
  String at20min = '';
}

class PatientInfo extends StatefulWidget {
//  const PatientInfo({ Key key }) : super(key: key);

  @override
  PatientInfoState createState() => new PatientInfoState();
}

class PatientInfoState extends State<PatientInfo> {
  PatientData patient = new PatientData();

  String _ddBirthOrder;
  String _ddGender;
  String _ddEstGa;
  String _ddGrowth;
  String _ddAdmitted;
  String _ddResAtBirth;
  String _ddIndicationReferral;
  String _dd1Min;
  String _dd5Min;
  String _dd10Min;
  String _dd15Min;
  String _dd20Min;

  final List<String> _birthOrder = <String>[
    'First', 'Second', 'Third', 'Fourth', 'Fifth', 'Sixth'];
  final List<String> _gender = <String>['Female', 'Male'];
  final List<String> _estGa = <String>[
    'GA 1', 'GA 2', 'GA 3', 'GA 4', 'GA 5', 'GA 6',
  ];
  final List<String> _growth = <String>[
    'Growth 1', 'Growth 2', 'Growth 3', 'Growth 4', 'Growth 5', 'Growth 6'];
  final List<String> _admitted = <String>['Central', 'East', 'West', 'Other'];
  final List<String> _resAtBirth = <String>['True', 'False'];
  final List<String> _indicationReferral = <String>[
    'Referral 1',
    'Referral 2',
    'Referral 3',
    'Referral 4',
    'Referral 5',
    'Referral 6'
  ];
  final List<String> _1Min = <String>[
    'Apgar 1', 'Apgar 2', 'Apgar 3', 'Apgar 4', 'Apgar 5', 'Apgar 6'];
  final List<String> _5Min = <String>[
    'Apgar 1', 'Apgar 2', 'Apgar 3', 'Apgar 4', 'Apgar 5', 'Apgar 6'];
  final List<String> _10Min = <String>[
    'Apgar 1', 'Apgar 2', 'Apgar 3', 'Apgar 4', 'Apgar 5', 'Apgar 6'];
  final List<String> _15Min = <String>[
    'Apgar 1', 'Apgar 2', 'Apgar 3', 'Apgar 4', 'Apgar 5', 'Apgar 6'];
  final List<String> _20Min = <String>[
    'Apgar 1', 'Apgar 2', 'Apgar 3', 'Apgar 4', 'Apgar 5', 'Apgar 6'
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: new Drawer(
        child: new MenuDrawer(),
      ),

      appBar: new AppBar(
        title: new Text(
            "Patient Information", style: new TextStyle(color: Colors.black),
            textAlign: TextAlign.left),
      ),

      body: new SafeArea(
        child: new Form(
//          autovalidate: _autovalidate,    //TODO
          child: new ListView(
            padding: const EdgeInsets.symmetric(
                horizontal: 30.0, vertical: 10.0),
            children: <Widget>[
              // Birth weight
              new TextFormField(
                decoration: const InputDecoration(
//                  icon: const Icon(Icons.person),
//                  hintText: 'What do people call you?',
                  labelText: 'Birth Weight *',
                ),
                keyboardType: TextInputType.number,
                onSaved: (String value) {
                  patient.birthWeight = value;
                },
//                validator: _validateNumber,  //TODO
                // TextInputFormatters are applied in sequence.
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly,
                ],
              ),

              // Birth order
              new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Expanded(
                    child: new TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Birth Order *',
                      ),
                      keyboardType: TextInputType.number,
                      onSaved: (String value) {
                        patient.birthOrder = value;
                      },
                      inputFormatters: <TextInputFormatter>[
                        WhitelistingTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  const SizedBox(width: 30.0,),
                  new Expanded(
                    child: new Container(
                      child: new DropdownButton<String>(
                        value: _ddBirthOrder,
                        isDense: false,
                        onChanged: (String newValue) {
                          setState(() {
                            _ddBirthOrder = newValue;
                          });
                        },
                        items: _birthOrder.map((String value) {
                          return new DropdownMenuItem<String>(
                            child: new Text(value),
                            value: value,
                          );
                        }).toList(),
                        hint: new Text('Birth Order *'),
                      ),
                      padding: new EdgeInsets.only(top: 20.0),
                    ),
                  ),
                ],
              ),

              // Gender, est. GA
              new Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Expanded(
                    child: new Container(
                      padding: new EdgeInsets.only(top: 10.0),
                      child: new DropdownButton<String>(
                        value: _ddGender,
                        onChanged: (String newValue) {
                          setState(() {
                            _ddGender = newValue;
                          });
                        },
                        items: _gender.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        hint: new Text('Gender *'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30.0,),
                  new Expanded(
                    child: new Container(
                      padding: new EdgeInsets.only(top: 10.0),
                      child: new DropdownButton<String>(
                        value: _ddEstGa,
                        onChanged: (String newValue) {
                          setState(() {
                            _ddEstGa = newValue;
                          });
                        },
                        items: _estGa.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        hint: new Text('Est. GA *'),
                      ),
                    ),
                  ),
                ],
              ),


              // Growth, baby admitted from
              new Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Expanded(
                    child: new Container(
                      padding: new EdgeInsets.only(top: 10.0),
                      child: new DropdownButton<String>(
                        value: _ddGrowth,
                        onChanged: (String newValue) {
                          setState(() {
                            _ddGrowth = newValue;
                          });
                        },
                        items: _growth.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        hint: new Text('Growth *'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30.0,),
                  new Expanded(
                    child: new Container(
                      padding: new EdgeInsets.only(top: 10.0),
                      child: new DropdownButton<String>(
                        value: _ddAdmitted,
                        onChanged: (String newValue) {
                          setState(() {
                            _ddAdmitted = newValue;
                          });
                        },
                        items: _admitted.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        hint: new Text('Admitted From *'),
                      ),
                    ),
                  ),
                ],
              ),

              // Resuscitation at birth, indications for referral
              new Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Expanded(
                    child: new Container(
                      padding: new EdgeInsets.only(top: 10.0),
                      child: new DropdownButton<String>(
                        value: _ddResAtBirth,
                        onChanged: (String newValue) {
                          setState(() {
                            _ddResAtBirth = newValue;
                          });
                        },
                        items: _resAtBirth.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        hint: new Text('Resuscitation *'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30.0,),
                  new Expanded(
                    child: new Container(
                      padding: new EdgeInsets.only(top: 10.0),
                      child: new DropdownButton<String>(
                        value: _ddIndicationReferral,
                        onChanged: (String newValue) {
                          setState(() {
                            _ddIndicationReferral = newValue;
                          });
                        },
                        items: _indicationReferral.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        hint: new Text('Referral *'),
                      ),
                    ),
                  ),
                ],
              ),

              // Resuscitation meds
              new TextFormField(
                decoration: const InputDecoration(
                  hintText: 'List of resuscitation medications',
                  helperText: 'Keep it short, this is just a demo',
                  labelText: 'Resuscitation Meds',
                ),
                maxLines: 2,
              ),

              // Other meds
              new TextFormField(
                decoration: const InputDecoration(
                  hintText: 'List of other medication history',
                  labelText: 'Other Meds',
                ),
                maxLines: 2,
              ),

              // Apgar
              new Container(
                  padding: new EdgeInsets.symmetric(vertical: 50.0),
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        child: new Text('Apgar', style: Theme
                            .of(context)
                            .textTheme
                            .button),
                        alignment: Alignment.centerLeft,
                      ),
                      new Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          new Expanded(
                            child: new Container(
                              padding: new EdgeInsets.only(top: 10.0),
                              child: new DropdownButton<String>(
                                value: _dd1Min,
                                onChanged: (String newValue) {
                                  setState(() {
                                    _dd1Min = newValue;
                                  });
                                },
                                items: _1Min.map((String value) {
                                  return new DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                hint: new Text('At 1 min'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 30.0,),
                          new Expanded(
                            child: new Container(
                              padding: new EdgeInsets.only(top: 10.0),
                              child: new DropdownButton<String>(
                                value: _dd5Min,
                                onChanged: (String newValue) {
                                  setState(() {
                                    _dd5Min = newValue;
                                  });
                                },
                                items: _5Min.map((String value) {
                                  return new DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                hint: new Text('At 5 min'),
                              ),
                            ),
                          ),
                        ],
                      ),

                      new Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          new Expanded(
                            child: new Container(
                              padding: new EdgeInsets.only(top: 10.0),
                              child: new DropdownButton<String>(
                                value: _dd10Min,
                                onChanged: (String newValue) {
                                  setState(() {
                                    _dd10Min = newValue;
                                  });
                                },
                                items: _10Min.map((String value) {
                                  return new DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                hint: new Text('At 10 min'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 30.0,),
                          new Expanded(
                            child: new Container(
                              padding: new EdgeInsets.only(top: 10.0),
                              child: new DropdownButton<String>(
                                value: _dd15Min,
                                onChanged: (String newValue) {
                                  setState(() {
                                    _dd15Min = newValue;
                                  });
                                },
                                items: _15Min.map((String value) {
                                  return new DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                hint: new Text('At 15 min'),
                              ),
                            ),
                          ),
                        ],
                      ),

                      new Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          new Expanded(
                            child: new Container(
                              padding: new EdgeInsets.only(top: 10.0),
                              child: new DropdownButton<String>(
                                value: _dd20Min,
                                onChanged: (String newValue) {
                                  setState(() {
                                    _dd20Min = newValue;
                                  });
                                },
                                items: _20Min.map((String value) {
                                  return new DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                hint: new Text('At 20 min'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 170.0,),
                        ],
                      ),

                    ],
                  )
              ),


              // Hint
              new Container(
                child: new Text('* indicates required field', style: Theme
                    .of(context)
                    .textTheme
                    .caption),
              ),

              // Submit button
              new Container(
                padding: const EdgeInsets.all(50.0),
                alignment: Alignment.center,
                child: new RaisedButton(
                  child: const Text('SUBMIT'),
//                  onPressed: _handleSubmitted,
                  onPressed: null,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

void main() =>
    runApp(
        new MaterialApp(
          title: 'Patient Information',
          home: new PatientInfo(),
        )
    );