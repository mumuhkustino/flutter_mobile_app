import 'package:flutter/material.dart';
import 'fonts_style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const colorLightGray = const Color(0xF2F2F2F2);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Cashy",
              style: TextStyle(color: Colors.black, fontFamily: 'Roboto'),
            ),
            backgroundColor: colorLightGray,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
                color: Colors.black,
              )
            ],
          ),
          body: SafeArea(
              child: Container(
                  // margin: EdgeInsets.only(
                      // left: 20.0, top: 0.0, bottom: 0.0, right: 20.0),
                  // padding: EdgeInsets.only(
                      // left: 0.0, top: 50.0, bottom: 0.0, right: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/images/ic_payment.png'),
                            width: 200,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 5),
                            child: Text("Rich Together", style: mainHeader),
                          ),
                          Text(
                            "Save your money little bit and we will help to be rich.",
                            style: subHeader,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ],
                  ))),
        ));
  }
}
