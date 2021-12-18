import 'package:flutter/material.dart';
import 'conestent.dart';
import 'screen_two.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: Row(
            children: <Widget>[
              Image.asset(
                'images/logo.png',
                height: 50,
                width: 60,
              ),
              SizedBox(
                width: 10,
                height: 0,
              ),
              Center(
                child: Text(
                  "Corona Connect",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Container(
            decoration: kFirstScreenBackGround,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Screen2(),
                          ));
                    },
                    shape: RoundedRectangleBorder(),
                    constraints: BoxConstraints.tightFor(
                      width: 400,
                      height: 65,
                    ),
                    elevation: 1,
                    child: Container(
                      child: Center(
                        child: Text(
                          'continue'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      color: Colors.green,
                      margin: EdgeInsets.only(top: 10),
                      height: 65,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
