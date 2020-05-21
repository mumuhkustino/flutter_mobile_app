import 'package:flutter/material.dart';

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
              style: TextStyle(color: Colors.black),
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
              child: Image(
            image: AssetImage('assets/images/ic_payment.png'),
            width: 200,
          )),
        ));
  }
}
