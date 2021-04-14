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
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[300],
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              GradientAppBar("Salam"),
              Container(
                child: Row(
                  children: [],
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
      padding: EdgeInsets.only(top: statusbarHeight),
      height: statusbarHeight + barHeight,
      child: Container(
        margin: EdgeInsets.only(top: 35.0),
        child: Column(
          children: [
            Center(
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 70.0,
                    width: 100.0,
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[900],
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            child: Text(
                              "Инструкция для регистрации входа",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
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
                    width: 100.0,
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[900],
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            child: Text(
                              "Инструкция для регистрации выхода",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              height: 30.0,
            ),
            /*Container(
              //margin: EdgeInsets.only(top: 40.0),
              child: ListTile(
                leading: Text('123'),
              ),
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
