import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isShowStatus = false;
  showStatus() {
    setState(() {
      isShowStatus = !isShowStatus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: GradientAppBar(),
          ),
          Align(
            alignment: Alignment(0, -0.7),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Text(
                    'ИИН',
                    style: TextStyle(
                      color: Color.fromRGBO(161, 185, 219, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '891008351024',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    child: ElevatedButton(
                      onPressed: () {
                        showStatus();
                      },
                      child: Text(
                        isShowStatus ? 'Показать статус' : 'Скрыть статус',
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(205, 211, 224, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GradientAppBar extends StatelessWidget {
  final double barHeight = 120.0;

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
              child: Text(
                'Профиль',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
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
