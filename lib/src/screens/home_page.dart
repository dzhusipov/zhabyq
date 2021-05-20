import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
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
              GradientAppBar("Salam"),
              Container(
                margin: EdgeInsets.only(
                  top: 30.0,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: SizedBox(
                  height: 85.0,
                  child: ElevatedButton(
                    onPressed: () {
                      print('enter');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Регистрация входа",
                          style: TextStyle(
                            fontSize: 18.0,
                            //fontFamily: "Raleway",
                            color: Colors.black,
                          ),
                        ),
                        Image.asset(
                          "assets/enter.png",
                          width: 120.0,
                          height: 120.0,
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      primary: Colors.white,
                      elevation: 0.5,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 8.0,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: SizedBox(
                  height: 85.0,
                  child: ElevatedButton(
                    onPressed: () {
                      print('exit');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Регистрация выхода",
                          style: TextStyle(
                            fontSize: 18.0,
                            //fontFamily: "Raleway",
                            color: Colors.black,
                          ),
                        ),
                        Image.asset(
                          "assets/exit.png",
                          width: 120.0,
                          height: 120.0,
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      primary: Colors.white,
                      elevation: 0.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}

class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 170.0;

  GradientAppBar(this.title);

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
              child: Text(
                'ASHYQ',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              /*Image.asset(
                'assets/logo.png',
                height: 50.0,
              ),*/
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 70.0,
                    width: 110.0,
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[900],
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.only(
                              bottom: 10.0,
                              left: 10.0,
                              right: 10.0,
                            ),
                            child: Text(
                              "Инструкция для регистрации входа",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        )),
                  ),
                  Container(
                    width: 30.0,
                  ),
                  Container(
                    height: 70.0,
                    width: 110.0,
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[900],
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.only(
                              bottom: 10.0,
                              left: 10.0,
                              right: 10.0,
                            ),
                            child: Text(
                              "Инструкция для регистрации выхода",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        )),
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
