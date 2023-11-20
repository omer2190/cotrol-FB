import 'package:controlfb/paige/HomeSecreen.dart';
import 'package:controlfb/paige/MyHomePage.dart';
import 'package:controlfb/src/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class SingIN extends StatefulWidget {
  const SingIN({Key? key}) : super(key: key);

  @override
  State<SingIN> createState() => _SingINState();
}

class _SingINState extends State<SingIN> {
  Radius r1 = const Radius.circular(25);
  Radius r2 = const Radius.circular(10);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          color: ccolors().globel,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: r1,
                              topRight: r1,
                              bottomLeft: r2,
                              bottomRight: r2)),
                      elevation: 10,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: ccolors().spshel,
                                borderRadius: BorderRadius.only(
                                    topLeft: r1, topRight: r1)),
                            padding: const EdgeInsets.only(top: 15, bottom: 15),
                            //color: ccolors().spshel,
                            width: 300,
                            margin: const EdgeInsets.only(bottom: 10),
                            child: const Text(
                              "Sing in",
                              style:
                                  TextStyle(fontSize: 28, color: Colors.white),
                              softWrap: true,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          inputText("Email", "Input your email"),
                          inputText("password", "Input your password"),
                          Container(
                            width: 300,
                            margin: const EdgeInsets.only(right: 10, left: 10),
                            padding: const EdgeInsets.only(top: 10, bottom: 15),
                            child: ElevatedButton(
                                onPressed: () {}, child: const Text("Go")),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push<void>(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const MyHomePage(title: "gfgf"),
                                  ),
                                );
                              },
                              child: Text(
                                "Forgot your password",
                                style: TextStyle(color: ccolors().spshel),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    ));
  }

  Padding inputText(String Titel, String SepTitel) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: TextFormField(
        decoration: InputDecoration(
            label: Text(Titel),
            hintText: SepTitel,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ccolors().spshel),
                borderRadius: BorderRadius.circular(5)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      ),
    );
  }
}
