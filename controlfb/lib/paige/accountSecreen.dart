import 'package:controlfb/src/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class AccountSecreen extends StatefulWidget {
  const AccountSecreen({Key? key}) : super(key: key);

  @override
  State<AccountSecreen> createState() => _AccountSecreenState();
}

class _AccountSecreenState extends State<AccountSecreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ccolors().body,
            body: Row(
              children: [
                Expanded(
                    flex: 4,
                    child: Card(
                      margin: EdgeInsets.all(10),
                      color: ccolors().card,
                      child: Column(
                        children: [
                          Card(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("custom notice"),
                                      TextField(
                                        maxLines: 3,
                                        minLines: 3,
                                        maxLength: 100,
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: ccolors().spshel),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5))),
                                      ),
                                      TextButton(
                                          onPressed: () {}, child: Text("Send"))
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {},
                                        //icon: Icon(Icons.abc_outlined),
                                        child: Text("New Updet"))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                Expanded(
                  flex: 1,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    color: ccolors().card,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Customers"),
                        ),
                        Expanded(child: ListView(children: [])),
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
// class AccountSecreen extends StatelessWidget {
//   const AccountSecreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
    
//   }
// }
