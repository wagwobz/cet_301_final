import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meeting Time Chooser',
      home: MyHomePage(),
    );
  }
}

bool pressed = false;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meeting Time Chooser"),
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 85,
              color: Colors.purple[800],
              child: Column(
                children: [
                  buildExpandedHour('', Colors.blueAccent),
                  buildExpandedHour('09:00', Colors.white54),
                  buildExpandedHour('10:00', Colors.white54),
                  buildExpandedHour('11:00', Colors.white54),
                  buildExpandedHour('12:00', Colors.white54),
                  buildExpandedHour('13:00', Colors.white54),
                  buildExpandedHour('14:00', Colors.white54),
                  buildExpandedHour('15:00', Colors.white54),
                  buildExpandedHour('16:00', Colors.white54),
                  buildExpandedHour('17:00', Colors.white54),
                  buildExpandedHour('18:00', Colors.white54),
                  buildExpandedHour('19:00', Colors.white54),
                  buildExpandedHour('20:00', Colors.white54),
                ],
              ),
            ),


            columnBuilder('Monday', Colors.purple[300] , Colors.white),
            columnBuilder('Tuesday', Colors.purple[300], Colors.white),
            columnBuilder('Wednesday', Colors.purple[300], Colors.white),
            columnBuilder('Thursday', Colors.purple[300], Colors.white),
            columnBuilder('Friday', Colors.purple[300], Colors.white),
            columnBuilder('Saturday', Colors.purple[300], Colors.white),
            columnBuilder('Sunday', Colors.purple[300], Colors.white),
          ],
        ),
      ),
    );
  }

  Expanded buildExpandedHour(String hour, Color color) {
    return Expanded(child: Container(
      child: Center(
        child: Text(
          hour,
        ),
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: new BorderRadius.circular(0.0),
        border: Border.all(
          color: Colors.black,
          style: BorderStyle.solid ,
        ),
      ),
    ),
                );
  }

  Container columnBuilder(String day, Color dayColor, Color buttonColor) {
    return Container(
            width: 85,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                      child: Center(
                        child: Text(
                            day,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: dayColor,
                        borderRadius: new BorderRadius.circular(0.0),
                        border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid ,
                        ),
                      ),
                    ),
                ),
                buildExpandedFlatButton(buttonColor),
                buildExpandedFlatButton(buttonColor),
                buildExpandedFlatButton(buttonColor),
                buildExpandedFlatButton(buttonColor),
                buildExpandedFlatButton(buttonColor),
                buildExpandedFlatButton(buttonColor),
                buildExpandedFlatButton(buttonColor),
                buildExpandedFlatButton(buttonColor),
                buildExpandedFlatButton(buttonColor),
                buildExpandedFlatButton(buttonColor),
                buildExpandedFlatButton(buttonColor),
                buildExpandedFlatButton(buttonColor),
              ],
            ),
          );
  }

  Expanded buildExpandedFlatButton(Color buttonColor) {
    return Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      pressed = !pressed;
                      });
                  },
                  child: Text('Empty'),
                  color: pressed? buttonColor : Colors.red,
                  shape: RoundedRectangleBorder (
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(
                    style: BorderStyle.solid,
                  ),),
                ),
              );
  }



}



