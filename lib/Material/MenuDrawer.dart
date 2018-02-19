import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        //DrawerHeader for future use (dashboard, login page etc.)
        new DrawerHeader(
          child: new Container(
            child: new FlatButton(
                onPressed: null, //TODO: add links for all onTaps
                child: new Text('Log In', style: new TextStyle(color: Colors.black))
            ),
            margin: new EdgeInsets.only(left: 0.0, right: 170.0, top: 10.0, bottom: 80.0)
          ),
        ),

        //current state
        const ListTile(
          title: const Text('Current State'),
//          onTap: () => Navigator.pushNamed(context, "/CurrentState"),
//          onTap: Navigator.pop(context),
//          onTap: Navigator.popAndPushNamed(context, '/CurrentState')
        ),

        //risk monitor
        new ExpansionTile(
            title: const Text('Risk Monitor'),
            backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
            children: const <Widget>[
              const ListTile(
                title: const Text('Hypotension'),
//                  onTap: (){},
              ),
              const ListTile(
                title: const Text('Hypothermia'),
//                      onTap: ,
              ),
              const ListTile(
                title: const Text('Pneumothorax'),
//                      onTap: ,
              )
            ]
        ),

        //activity monitor
        const ListTile(
          title: const Text('Activity Monitor'),
//                onTap: ,
        ),

        //risk history
        new ExpansionTile(
          title: const Text('Risk Hisotry'),
          backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
          children: <Widget>[
            const ListTile(
              title: const Text('All'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('Hypoglycemia'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('Pneumothorax'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('Hypothermia'),
//                      onTap: ,
            )
          ],
        ),

        //lab work
        new ExpansionTile(
          title: new Text('Lab Work'),
          backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
          children: <Widget>[
            const ListTile(
              title: const Text('View Recommended Test'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('Order Additional Test'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('Enter Patient Report'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('View Patient Report'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('Enter Recommended Medication'),
//                      onTap: ,
            )
          ],
        ),

        //PSSAT form
        const ListTile(title: const Text('PSSAT Form')),

        //STABLE
        new ExpansionTile(
          title: new Text('S.T.A.B.L.E'),
          backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
          children: <Widget>[
            const ListTile(
              title: const Text('Sugar'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('Temperature'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('Airway'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('Blood Pressure'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('Lab Work'),
//                      onTap: ,
            ),
            const ListTile(
              title: const Text('Emotional Support'),
//                      onTap: ,
            )
          ],
        )
      ],
    );
  }
}