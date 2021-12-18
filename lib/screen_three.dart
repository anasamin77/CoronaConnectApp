import 'dart:math';
import 'package:flutter/material.dart';
import 'conestent.dart';
import 'screen_one.dart';
import 'package:flutter_blue/flutter_blue.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  FlutterBlue flutterBlue = FlutterBlue.instance;
  double minDist = double.infinity;
  int noOfDev = 0;
  String minName = "";
  bool socialFailed = false;
  String status = "blue";
  Set<String> names = {};
  bool scanning = false;
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
                  "Scan Result",
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
            decoration: kThirdScreenBackGround,
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 260,
                    height: 50,
                    color: Colors.green.shade900,
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        style: kScanResultStyle,
                        children: [
                          TextSpan(
                            text: " Safe? : ",
                            style: kScanResultStyle,
                          ),
                          TextSpan(
                            text: socialFailed ? "No" : "Yes",
                            style: socialFailed
                                ? TextStyle(
                                    color: Colors.red,
                                    fontStyle: FontStyle.italic,
                                  )
                                : TextStyle(
                                    color: Colors.lightBlueAccent,
                                    fontStyle: FontStyle.italic,
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 260,
                    height: 50,
                    color: Colors.green.shade900,
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        style: kTheScanResultStyle,
                        children: [
                          TextSpan(
                            text: " Trespassers : ",
                            style: kScanResultStyle,
                          ),
                          TextSpan(
                            text: "${names.length}",
                            style: kTheScanResultStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 260,
                    height: 50,
                    color: Colors.green.shade900,
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        style: kScanResultStyle,
                        children: [
                          TextSpan(
                            text: " Min Dist : ",
                            style: kScanResultStyle,
                          ),
                          TextSpan(
                            text: minDist.toStringAsFixed(4) + " m",
                            style: kTheScanResultStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RawMaterialButton(
                        onPressed: () async {
                          flutterBlue.startScan();
                          setState(() {
                            scanning = true;
                          });
                          flutterBlue.scanResults.listen(
                            (results) {
                              // do something with scan results
                              noOfDev = 0;
                              minDist = double.infinity;
                              double dist = 0;
                              minName = "";
                              socialFailed = false;
                              status = "blue";
                              names.clear();
                              for (ScanResult r in results) {
                                debugPrint("name!!!: " + r.toString());
                                print(
                                    '${r.device.name} found! rssi: ${r.rssi}');
                                names.add(r.device.name);
                                dist = pow(10, ((-69 - (r.rssi)) / (10 * 2)))
                                    as double;
                                debugPrint("distance from the device $dist");
                                if (dist < minDist) {
                                  minDist = dist;
                                  minName = r.device.name;
                                  debugPrint(
                                      "dist = $minDist \n $minName \n $socialFailed");
                                  if (minDist < 1.86) {
                                    setState(() {
                                      socialFailed = true;
                                      debugPrint("red hua re");
                                      status = "red";
                                    });
                                  }
                                }
                                // min dist, no of devices.
                              }
                              if (minName != "" || minDist != double.infinity) {
                                setState(() {
//                              Alert(
//                                context: context,
//                                title: "Name of device: $minName",
//                                desc:
//                                    "Distance: - $minDist \n You are socially failed? ${names.length}",
//                              ).show();
                                });
                              }
                              if (socialFailed != true) {
                                setState(() {
                                  status = "green";
                                });
                              }
                              // if social true vibrate
                            },
                          );
                          flutterBlue.stopScan();
                          setState(() {
                            debugPrint("stoppedrekgbrejgb");
                            scanning = false;
                          });
                        },
                        shape: RoundedRectangleBorder(),
                        constraints: BoxConstraints.tightFor(
                          width: 100,
                          height: 65,
                        ),
                        elevation: 1,
                        child: Container(
                          width: 100,
                          child: Center(
                            child: Text(
                              'Scan',
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
                          width: 100,
                          height: 65,
                        ),
                        elevation: 1,
                        child: Container(
                          width: 100,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
