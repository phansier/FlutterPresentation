import 'package:flutter/material.dart';
import 'package:example_flutter/navigation.dart';

class TitleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double x = width > 1200 ? 1 : width > 500 ? 0.5 : 0.25;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.transparent,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: 'Next',
          ),
        ],
        onTap: (int index) {
          if (index == 1) Navigation.goToMe(context);
        },
        currentIndex: 1,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(x * 32.0),
              child: Image.asset(
                'images/Kaspersky.png',
                width: width * 0.3,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
                padding: EdgeInsets.all(x * 32.0),
                child: Text(
                  'Flutter как инструмент для разработки прототипов',
                  style: TextStyle(fontSize: x * 64, color: Colors.white),
                )),
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    x * 32.0, x * 32.0, x * 32.0, x * 64.0),
                child: Text(
                  'Андрей Берюхов',
                  style: TextStyle(fontSize: x * 32, color: Colors.white),
                )),
          ]),
    );
  }
}
