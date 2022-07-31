import 'package:flutter/material.dart';
import 'package:example_flutter/navigation.dart';

class OutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double x = width > 1200 ? 1 : width > 500 ? 0.5 : 0.25;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Back',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.transparent,
            ),
            label: '',
          ),
        ],
        onTap: (int index) {
          if (index == 0) Navigation.goToMe(context);
        },
        currentIndex: 1,
      ),
      body: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(x * 32.0),
                child: Text(
                  'На случай показа с чужого компьютера остальные слайды я сделал в Power Point',
                  style: TextStyle(fontSize: x * 64),
                )),
            Padding(
                padding: EdgeInsets.all(x * 32.0),
                child: Row(children: [
                  Text(
                    'Слайды и проект: ',
                    style: new TextStyle(fontSize: x * 32),
                  ),
                  Flexible(
                      child: Text(
                    'https://github.com/AndreySBer/FlutterPresentation',
                    style: new TextStyle(
                        fontSize: x * 32,
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  )),
                ])),
            Center(
                child: Padding(
              padding: EdgeInsets.all(32.0),
              child: Image.asset(
                'images/QR.png',
                width: width * 0.25,
                fit: BoxFit.fitWidth,
              ),
            )),
          ]),
    );
  }
}
