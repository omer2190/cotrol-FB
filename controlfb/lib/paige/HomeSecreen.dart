import 'package:controlfb/src/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class HomeSecreen extends StatefulWidget {
  const HomeSecreen({Key? key}) : super(key: key);

  @override
  State<HomeSecreen> createState() => _HomeSecreenState();
}

class _HomeSecreenState extends State<HomeSecreen> {
  Radius radius = Radius.circular(25);
  bool v = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: EdgeInsets.only(top: 5, left: 10, right: 10),
        child: Scaffold(
          backgroundColor: ccolors().body,
          appBar: AppBar(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.all(radius)),
            elevation: 10,
            backgroundColor: ccolors().card,
            actions: [
              Switch(value: v, onChanged: ((value) {})),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: CircleAvatar(),
              ),
            ],
          ),
          body: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Row(
                        children: [mycard(), mycard(), mycard()],
                      ),

                      /// tibel for data forme fierbass
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(radius)),
                          child: ListView(
                            children: [
                              newMethod(),
                              newMethod(),
                              newMethod(),
                              newMethod(),
                              newMethod(),
                              newMethod(),
                              newMethod(),
                              newMethod(),
                              newMethod(),
                              newMethod(),
                            ],
                          ),
                        ),
                      ))
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Card(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(radius)),
                    color: ccolors().card,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: const Text(
                            "data",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                        Expanded(
                          child: ListView(children: [
                            Row(
                              children: [
                                const CircleAvatar(),
                                Column(),
                              ],
                            ),
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text("data"),
                                    TextField(
                                      readOnly: true,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text("data"),
                                    TextField(
                                      maxLines: 5,
                                      readOnly: true,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ]),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, left: 10, right: 5),
                                child: ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.done_outline,
                                    ),
                                    label: const Text("Done"),
                                    style: ElevatedButton.styleFrom(
                                        primary: ccolors().spshel)),
                              ),
                            ),
                            Expanded(
                              child: TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.do_not_disturb,
                                    color: ccolors().globel,
                                  ),
                                  label: const Text("False")),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }

  Padding newMethod() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: const CircleAvatar(),
        title: const Text("name app"),
        subtitle: const Text("frome omer2190"),
        trailing: Icon(
          Icons.done,
          color: ccolors().spshel,
        ),
        onTap: () {},
      ),
    );
  }

  Expanded mycard() {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: 50,
          height: 150,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25))),
            color: ccolors().globel,
            elevation: 5,
            child: Column(children: [
              Container(
                  margin: const EdgeInsets.all(5),
                  child: const Text(
                    "data",
                    style: TextStyle(fontSize: 24),
                  )),
              Container(
                  margin: const EdgeInsets.all(5),
                  child: const Text(
                    "data",
                    style: TextStyle(fontSize: 20),
                  )),
            ]),
          ),
        ),
      ),
    );
  }
}
