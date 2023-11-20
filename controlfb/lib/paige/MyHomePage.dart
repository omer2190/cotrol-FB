import 'package:controlfb/paige/HomeSecreen.dart';
import 'package:controlfb/src/colors.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ccolors().body,
      body: Center(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            sidebar(),
            const Expanded(
              flex: 9,
              child: HomeSecreen(),
            ),
          ],
        ),
      ),
    );
  }

  Expanded sidebar() {
    return Expanded(
        flex: 0,
        child: Card(
          margin: EdgeInsets.only(left: 10, top: 5, bottom: 5),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))),
          elevation: 10,
          color: ccolors().card,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: CircleAvatar(
                  radius: 15,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.home, color: ccolors().spshel)),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person, color: ccolors().spshel),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
