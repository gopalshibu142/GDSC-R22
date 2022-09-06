import 'package:flutter/material.dart';

import 'package:gdscr22/globals.dart';

class Tickets extends StatefulWidget {
  Tickets({Key? key}) : super(key: key);

  @override
  State<Tickets> createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff000000),title: Text("Tickets"),
      ),
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              fit: BoxFit.fitHeight, image: AssetImage("assets/tbg.jpg")),
        ),
      ),
      SafeArea(
        child: Container(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: phones.length,
              itemBuilder: (BuildContext context, int i) {
                return Container(
                    height: 150,
                    margin: EdgeInsets.all(2),
                    color: Color(0x88000000),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name : ${names[i]}",
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            Text(
                              "phone : ${phones[i]}",
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            Text(
                              "email : ${emails[i]}",
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ],
                        ),
                        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "From  : ${locns[i]}",
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            Text(
                              "To : ${dests[i]}",
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            Text(
                              "date : ${dates[i]}",
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ));
              }),
        ),
      )
    ]));
  }
}
