//import 'package:ashyq/src/screens/qr_scanner.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  ResultPage({Key key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String _timer = "4:59";

  setTimer() async {
    await Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        //_timer =
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.indigo[50],
      body: SingleChildScrollView(
        child: Container(
          //color: Colors.grey[500],
          //height: double.infinity,
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              GradientAppBar(),
              Container(
                margin: EdgeInsets.only(
                  left: 20.0,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  'ИИН',
                  style: TextStyle(
                    color: Colors.grey,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 30.0,
                ),
              ),
              Container(
                width: double.infinity / 2,
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
                  height: 340.0,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 5.0,
                        ),
                        child: Text(
                          'ВХОД',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[800],
                          ),
                        ),
                      ),
                      Container(
                        //alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: 20.0,
                        ),
                        child: Text(
                          'МАМУТОВА МАДИНА АКБАРЖАНОВНА',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            //color: Colors.blue[800],
                          ),
                        ),
                      ),
                      Container(
                        //alignment: Alignment.center,
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
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 8.0,
                                  ),
                                ),
                                Text('1234567890'),
                              ],
                            ),
                            Container(
                              color: Colors.grey,
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
                                    color: Colors.grey,
                                  ),
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
                        color: Colors.grey,
                        //width: 50.0,
                        height: 1.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 8.0,
                        ),
                        child: Text(
                          'Статус',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
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
                          color: Colors.blue[200],
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
                                color: Colors.blue[700],
                              ),
                            ),
                            Center(
                              child: Text(
                                'СИНИЙ',
                                style: TextStyle(
                                  color: Colors.blue[700],
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 15.0,
                        ),
                        child: Text(
                          'Срок действия истечет через:',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 15.0,
                        ),
                        child: Text(
                          _timer,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 26.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: 'Уведомления',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Настройка',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),*/
    );
  }
}

class GradientAppBar extends StatelessWidget {
  //final String title;
  final double barHeight = 170.0;

  //GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;
    return Container(
      //padding: EdgeInsets.only(top: statusbarHeight),
      height: statusbarHeight + barHeight,
      child: Container(
        margin: EdgeInsets.only(top: 60.0),
        child: Column(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/only_logo.png',
                    height: 40.0,
                    width: 40.0,
                  ),
                  Text(
                    'ASHYQ',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              /*Image.asset(
                'assets/logo.png',
                height: 50.0,
              ),*/
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Text(
                      'ФИО',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(''),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Номер телефона',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      '+7777777777',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*Container(
              margin: EdgeInsets.only(top: 10.0),
              height: 30.0,
            ),*/
          ],
        ),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue, Colors.blue[900]],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
    );
  }
}
