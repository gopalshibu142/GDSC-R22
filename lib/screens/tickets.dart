import 'package:flutter/material.dart';


class Tickets extends StatefulWidget {
  Tickets({Key? key}) : super(key: key);

  @override
  State<Tickets> createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Stack(
        children: [
          Container(
            decoration:const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(fit: BoxFit.fitHeight,image: AssetImage("assets/tbg.jpg")),
           
            ),
            child: SingleChildScrollView(
              
            ),
          )
        ],
      ),
    );
  }
}