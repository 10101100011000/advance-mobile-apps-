import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  bool _buttonPressed = false;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mission 1"),
        ),
        body: Stack(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: <Color>[Colors.black12, Colors.blue]))),
            Container(
              child: Column(
                children: <Widget>[
                  Flexible(
                      flex: 7,
                      child: Container(
                        width: 1280,
                        height: 720,
                        child: Image(
                            image: AssetImage("images/psn.png"),
                            fit: BoxFit.fill),
                      )),
                  Flexible(
                    flex: 4,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                              width: 80,
                              height: 80,
                              margin: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage("images/ps1.jpg"),
                                      fit: BoxFit.fill))),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                              width: 80,
                              height: 80,
                              margin: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage("images/ps2.jpg"),
                                      fit: BoxFit.fill))),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                              width: 80,
                              height: 80,
                              margin: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage("images/ps3.jpg"),
                                      fit: BoxFit.fill))),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                              width: 80,
                              height: 80,
                              margin: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage("images/ps4.jpg"),
                                      fit: BoxFit.fill))),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 8,
                    child: ListView(
                      children: <Widget>[
                        Text(
                          "PlayStation (Japanese: プレイステーション, Hepburn: Pureisutēshon, officially abbreviated as PS) is a Japanese video game brand that consists of five home video game consoles, as well as a media center, an online service, a line of controllers, two handhelds and a phone, as well as multiple magazines.",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "The brand is produced by Sony Interactive Entertainment, a division of Sony, with the first console releasing as the PlayStation in Japan released in December 1994, and worldwide the following year.[1]",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "The original console in the series was the first console of any type to ship over 100 million units, doing so in under a decade.[2] Its successor, the PlayStation 2, was released in 2000. The PlayStation 2 is the best-selling home console to date, having reached over 155 million units sold by the end of 2012.",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          " Sony's next console, the PlayStation 3, was released in 2006, selling over 87.4 million units by March 2017.[4] Sony's latest console, the PlayStation 4, was released in 2013, selling a million units within a day, becoming the fastest selling console in history.[5] The next console in the series, the PlayStation 5, is expected to be released in November 2020.",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment(0.95, -0.5),
              margin: EdgeInsets.only(top: 12, right: 10),
              child: FloatingActionButton(
                  child: Icon(
                    Icons.favorite,
                    color: _buttonPressed ? Colors.red : Colors.grey,
                  ),
                  backgroundColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      _buttonPressed = !_buttonPressed;
                    });
                  }),
            )
          ],
        ),
      ),
    );
  }
}
