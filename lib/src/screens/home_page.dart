import 'package:flutter/cupertino.dart';

import 'qr_scanner.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              GradientAppBar(),
              Container(
                margin: EdgeInsets.only(top: 30.0),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 10),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Для пользователей',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  height: 80.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QrScanner(),
                        ),
                      );
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
                          "assets/enter_logo.png",
                          width: 120.0,
                          height: 120.0,
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      primary: Color.fromRGBO(230, 233, 238, 1),
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
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 20,
              height: 20,
              child: Image.asset('assets/info_icon.png'),
            ),
            label: 'Инфо',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Профиль',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 20,
              height: 20,
              child: Image.asset('assets/ashyq_icon.png'),
            ),
            label: 'О приложении',
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
  final double barHeight = 170.0;

  GradientAppBar();

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;
    return Container(
      //padding: EdgeInsets.only(top: statusbarHeight),
      height: statusbarHeight + barHeight,
      child: Container(
        margin: EdgeInsets.only(top: 60.0),
        height: 500,
        child: Column(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/only_logo_ed.png',
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
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Container(
                height: 60.0,
                width: 100.0,
                color: Colors.transparent,
                child: Center(
                  child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 59, 150, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
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
              ),
            ),
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
