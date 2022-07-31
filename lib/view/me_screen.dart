import 'package:flutter/material.dart';
import 'package:flutter_presentation/navigation.dart';

class MeScreen extends StatelessWidget {
  const MeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double x = width > 1200 ? 1.0 : width > 500 ? 0.5 : 0.25;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Back',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: 'Next',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigation.goToTitle(context);
          }
          if (index == 1) {
            Navigation.goToOut(context);
          }
        },
        currentIndex: 1,
      ),
      body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(x * 32.0), child: _column(width, x)),
            Container(
              constraints: BoxConstraints(maxWidth: width / 3),
              child: Image.asset(
                'assets/images/Beryukhov.png',
                fit: BoxFit.fitHeight,
              ),
            ),
          ]),
    );
  }

  Widget _column(double width, double x) {
    return Container(
      constraints: BoxConstraints(maxWidth: 2.0 * width / 3 - 2 * x * 32),
      child: Column(children: <Widget>[
        Padding(
            padding: EdgeInsets.all(x * 32.0),
            child: Text(
              'Обо мне',
              style: TextStyle(fontSize: x * 64),
            )),
        _row(const AssetImage('assets/images/KISA.png'),
            'Разработчик Kaspersky Internet Security for Android', width, x),
        _row(const AssetImage('assets/images/HSE.png'), 'Студент магистратуры ФКН ВШЭ',
            width, x),
        _row(const AssetImage('assets/images/QC.png'), 'Ранее разработчик в стартапе', width,
            x),
      ]),
    );
  }

  Widget _row(AssetImage image, String text, double width, double x) {
    return Flexible(
        child: Padding(
            padding: EdgeInsets.all(x * 8.0),
            child: Row(
              children: <Widget>[
                Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        x * 8.0, x * 8.0, x * 32.0, x * 8.0),
                    child: CircleAvatar(
                      backgroundImage: image,
                      backgroundColor: Colors.transparent,
                    )),
                Flexible(
                  child: Text(text, style: TextStyle(fontSize: x * 36)),
                )
              ],
            )));
  }
}
