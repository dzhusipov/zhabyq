import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'modules/gradient_app_result_bar.dart';

class ResultPage extends StatefulWidget {
  ResultPage({Key key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String _timer = "04:59";
  int _sec = 59;
  int _min = 4;
  int ms = 0;
  setTimer() async {
    await Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        if (_min == 0 && _sec == 0) {
          _timer = '00:00';
          return;
        }

        if (_sec == 0) {
          _min = _min - 1;
          _sec = 59;
        } else {
          _sec = _sec - 1;
        }

        if (_sec.toString().length == 1) {
          _timer = '0$_min:0$_sec';
        } else {
          _timer = '0$_min:$_sec';
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    setTimer();
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
                    Container(
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
                              _timer,
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
