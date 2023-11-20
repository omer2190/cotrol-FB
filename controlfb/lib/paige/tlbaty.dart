import 'package:controlfb/src/colors.dart';
import 'package:flutter/material.dart';

class tlabatyscreen extends StatefulWidget {
  const tlabatyscreen({Key? key}) : super(key: key);

  @override
  State<tlabatyscreen> createState() => _tlabatyscreenState();
}

class _tlabatyscreenState extends State<tlabatyscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: const Icon(Icons.search),
        title: const Text("طلباتي"),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_active))
        ],
      ),
      body: Container(
        color: Colors.red,
        child: Card(
          color: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: Column(
            children: [
              Row(
                children: const [
                  SizedBox(
                    height: 70,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 100,
                    color: ccolors().globel,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    height: 100,
                    color: ccolors().globel,
                  ),
                ],
              ),
              Scrollbar(
                //thumbVisibility: true,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    primary: true,
                    //reverse: false,
                    padding: const EdgeInsets.all(1),
                    child: Row(children: [
                      mybuttenSections("المطاعم"),
                      mybuttenSections("حلويات ومعجنات"),
                      mybuttenSections("الفواكه وخضراوات"),
                      mybuttenSections("ماركت"),
                      mybuttenSections("اللحوم"),
                      mybuttenSections("بحرية"),
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }

  TextButton mybuttenSections(String titel) {
    return TextButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            titel,
            style: const TextStyle(fontSize: 18),
          ),
        ));
  }
}
