import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  final double barHeight = 170.0;

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;
    return Container(
      //padding: EdgeInsets.only(top: statusbarHeight),
      height: statusbarHeight + barHeight,
      child: Container(
        margin: EdgeInsets.only(
          top: 60.0,
        ),
        child: Column(
          children: [
            Center(
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
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
