import 'screen_four.dart';
import 'round_icon_button.dart';
import 'package:flutter/material.dart';
import 'conestent.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screen_one.dart';
import 'screen_three.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:camera/camera.dart';
//
// List<CameraDescription> cameras = [];
//
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   cameras = await availableCameras();
// }

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  // CameraController? controller;

  // @override
  // void initState() {
  //   super.initState();
  //   controller = CameraController(cameras[0], ResolutionPreset.max);
  //   controller?.initialize().then((_) {
  //     if (!mounted) {
  //       return;
  //     }
  //     setState(() {});
  //   });
  // }
  //
  // @override
  // void dispose() {
  //   controller?.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                height: 0,
                width: 10,
              ),
              Center(
                child: Text(
                  "Main Menu",
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
            decoration: kSecondScreenBackGround,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                        width: 0,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: kColorIcons,
                                  child: Icon(
                                    FontAwesomeIcons.handsWash,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 0,
                                ),
                                Text(
                                  'Wash Hands'.toUpperCase(),
                                  style: TextStyle(
                                    color: Colors.green.shade900,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: kColorIcons,
                                  child: Icon(
                                    FontAwesomeIcons.peopleArrows,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 0,
                                ),
                                Text(
                                  'keep distance'.toUpperCase(),
                                  style: TextStyle(
                                    color: Colors.green.shade900,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: kColorIcons,
                                  child: Icon(
                                    FontAwesomeIcons.soap,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 0,
                                ),
                                Text(
                                  'use soap'.toUpperCase(),
                                  style: TextStyle(
                                    color: Colors.green.shade900,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: kColorIcons,
                                  child: Icon(
                                    FontAwesomeIcons.home,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 0,
                                ),
                                Text(
                                  'stay at home'.toUpperCase(),
                                  style: TextStyle(
                                    color: Colors.green.shade900,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20, width: 0),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: kColorIcons,
                                  child: Icon(
                                    FontAwesomeIcons.users,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 0,
                                ),
                                Text(
                                  'avoid crowds'.toUpperCase(),
                                  style: TextStyle(
                                    color: Colors.green.shade900,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: kColorIcons,
                                  child: Icon(
                                    FontAwesomeIcons.pumpSoap,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 0,
                                ),
                                Text(
                                  'use gel'.toUpperCase(),
                                  style: TextStyle(
                                    color: Colors.green.shade900,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: kColorIcons,
                                  child: Icon(
                                    FontAwesomeIcons.handSparkles,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 0,
                                ),
                                Text(
                                  'use gloves'.toUpperCase(),
                                  style: TextStyle(
                                    color: Colors.green.shade900,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: kColorIcons,
                                  child: Icon(
                                    FontAwesomeIcons.mask,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 0,
                                ),
                                Text(
                                  'ware mask'.toUpperCase(),
                                  style: TextStyle(
                                    color: Colors.green.shade900,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30, width: 0),
                  Text(
                    'Stay Home .. Stay Safe',
                    style: TextStyle(
                      color: Colors.green.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 45, width: 0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  RoundIconButton(
                                    icon: FontAwesomeIcons.solidAddressCard,
                                    iconColor: Colors.white,
                                    buttonColor: Colors.green.shade900,
                                    screenNumber: Screen3(),
                                  ),
                                  SizedBox(
                                    height: 10,
                                    width: 0,
                                  ),
                                  Text(
                                    'Scan Result',
                                    style: kTextButtonStyle,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  RoundIconButton(
                                    screenNumber: Screen2(),
                                    // onpress: () {
                                    //   // if (!controller!.value.isInitialized) {
                                    //   //   return Container();
                                    //   // }
                                    //   // return MaterialApp(
                                    //   //   home: CameraPreview(controller!),
                                    //   // );
                                    // },
                                    icon: FontAwesomeIcons.camera,
                                    iconColor: Colors.green.shade900,
                                    buttonColor: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 10,
                                    width: 0,
                                  ),
                                  Text(
                                    'Camera',
                                    style: kTextButtonStyle,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  RoundIconButton(
                                    screenNumber: Screen4(),
                                    icon: FontAwesomeIcons.checkSquare,
                                    iconColor: Colors.white,
                                    buttonColor: Colors.green.shade900,
                                  ),
                                  SizedBox(
                                    height: 10,
                                    width: 0,
                                  ),
                                  Text(
                                    'Check Result',
                                    style: kTextButtonStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
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
