import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'modules/gradient_app_result_bar.dart';

class ResultPage extends StatefulWidget {
  ResultPage({Key key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  Stopwatch _stopwatch;
  Timer _timer;
  int minTime = 4;
  int _oldSec = 9999;

  int _ainmationDuration = 800;

  Timer _visibilityTimer;
  bool _visible = true;

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
    _timer = Timer.periodic(Duration(milliseconds: 30), (timer) {
      setState(() {});
    });

    _visibilityTimer = Timer.periodic(Duration(milliseconds: 700), (timer) {
      setState(() {
        _visible = !_visible;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void handleStartStop() {
    if (_stopwatch.isRunning) {
      _stopwatch.stop();
    } else {
      _stopwatch.start();
    }

    setState(() {});
  }

  String formatTime(int milliseconds) {
    var secs = milliseconds ~/ 1000;
    //var hours = (secs ~/ 3600).toString().padLeft(2, '0');
    var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
    var seconds = (secs % 60).toString().padLeft(2, '0');
    String ms = '';

    if (milliseconds >= 1000) {
      ms =
          milliseconds.toString().substring(milliseconds.toString().length - 2);
    }

    int minInt = int.parse(minutes);
    String minStr = '';

    if (seconds == '60') {
      seconds = '00';
    }

    if (minInt <= 59) {
      minStr = (minTime - minInt).toString();
    } else {
      minStr = '0';
    }

    int secInt = int.parse(seconds);
    String secStr = '';
    if (secInt <= 59) {
      secStr = (60 - secInt - 1).toString();
    } else {
      secStr = '0';
    }

    if (minStr == '60') {
      minStr = '00';
    }

    if (secStr.length == 1) {
      secStr = '0$secStr';
    }

    return "0$minStr:$secStr:$ms";
  }

  @override
  Widget build(BuildContext context) {
    //setTimer();
    _stopwatch.start();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.indigo[50],
      body: Stack(
        children: <Widget>[
          GradientAppBar(),
          Align(
            alignment: Alignment(0, 0.2),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 3,
                  ),
                ],
              ),
              margin: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: SizedBox(
                height: 450.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 5.0,
                      ),
                      child: Text(
                        'ВХОД',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 58, 150, 1),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: Text(
                        'ТОО "ADRENALIN FITNESS\n(АДРЕНАЛИН ФИТНЕС)"',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                'БИН/ИИН',
                                style: TextStyle(
                                    color: Color.fromRGBO(161, 185, 219, 1)),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 8.0,
                                ),
                              ),
                              Text('190640014729'),
                            ],
                          ),
                          Container(
                            color: Color.fromRGBO(161, 185, 219, 1),
                            width: 1.0,
                            height: 60.0,
                            margin: EdgeInsets.symmetric(
                              horizontal: 50.0,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                'Номер входа',
                                style: TextStyle(
                                    color: Color.fromRGBO(161, 185, 219, 1)),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 8.0,
                                ),
                              ),
                              Text('Адреналин'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(161, 185, 219, 1),
                      height: 1.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 8.0,
                      ),
                      child: Text(
                        'Статус',
                        style:
                            TextStyle(color: Color.fromRGBO(161, 185, 219, 1)),
                      ),
                    ),
                    AnimatedOpacity(
                      duration: Duration(milliseconds: _ainmationDuration),
                      opacity: _visible ? 1.0 : 0.0,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 5.0,
                          right: 5.0,
                          top: 8.0,
                        ),
                        height: 80.0,
                        width: double.infinity / 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(164, 238, 173, 1),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 3,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.info_outline,
                                color: Color.fromRGBO(0, 134, 61, 1),
                              ),
                            ),
                            Center(
                              child: Text(
                                'БЕЗОПАСНЫЙ',
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 134, 61, 1),
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(247, 246, 254, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 15.0,
                            ),
                            child: Text(
                              'Срок действия истечет через:',
                              style: TextStyle(
                                  color: Color.fromRGBO(161, 185, 219, 1)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0, bottom: 20),
                            child: Text(
                              formatTime(_stopwatch.elapsedMilliseconds),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 26.0,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Дата и время сканирования кода',
                              style: TextStyle(
                                  color: Color.fromRGBO(161, 185, 219, 1)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.0, bottom: 20),
                            child: Text(
                              DateFormat('dd.MM.yyyy HH:mm')
                                  .format(DateTime.now()),
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(161, 185, 219, 1),
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.8),
            child: Container(
              margin: EdgeInsets.only(
                top: 30.0,
                left: 10.0,
                right: 10.0,
              ),
              child: Text(
                'Покажите полученный результат соответствующему сотруднику объекта',
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
