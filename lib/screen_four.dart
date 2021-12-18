import 'conestent.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'screen_one.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

enum Check { positive, negative }

class Screen4 extends StatefulWidget {
  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  late Check checkResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Check Result",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: kFourthScreenBackGround,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        colour: Colors.red,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.plus,
                          iconColor: Colors.white,
                        ),
                        screenNumber: Screen1(),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        colour: Colors.green.shade900,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.minus,
                          iconColor: Colors.white,
                        ),
                        screenNumber: Screen1(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                // flex: 2,
                child: Text(
                  'If you have corona, press the positive button and everyone who is close to you will know about it, but if you do not have corona, press the negative button and you will return to the main menu.',
                  textAlign: TextAlign.center,
                  style: kTextScreenView,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              RawMaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen1(),
                      ));
                },
                shape: RoundedRectangleBorder(),
                constraints: BoxConstraints.tightFor(
                  width: 200,
                  height: 65,
                ),
                elevation: 1,
                child: Container(
                  child: Center(
                    child: Text(
                      'Back',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  color: Colors.white,
                  margin: EdgeInsets.only(top: 20),
                  height: 65,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
