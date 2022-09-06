import 'package:flutter/material.dart';
import 'package:gdscr22/globals.dart';

class Booking extends StatefulWidget {
  Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body: Stack(
        children: [Container(decoration:const BoxDecoration(color: Colors.blue,image: DecorationImage(
          fit:BoxFit.fitWidth,image: AssetImage("assets/bg1.jpg")
          ) )),
        SafeArea(child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text("Book Your Ticket",style: TextStyle(color: Colors.white,fontSize: 35),),
                Container(width:280,
                child: Column(children: [
                  TextFormField(
                    style: TextStyle(color: Colors.white70),
                      decoration: const InputDecoration(
                                        hintText: "Enter your Fullname",
                                        hintStyle:
                                            TextStyle(color: Colors.white54),
                                        labelText: "Name",
                                        
                                        labelStyle: TextStyle(
                                          
                                            color: Color.fromARGB(255, 225, 210, 243))),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.white70),
                      decoration: const InputDecoration(
                                        hintText: "Enter your mail id",
                                        hintStyle:
                                            TextStyle(color: Colors.white54),
                                        labelText: "email",
                                        
                                        labelStyle: TextStyle(
                                          
                                            color: Color.fromARGB(255, 225, 210, 243))),
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white70),
                    keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                                        hintText: "Enter your phone no",
                                        hintStyle:
                                            TextStyle(color: Colors.white54),
                                        labelText: "Contact no",
                                        
                                        labelStyle: TextStyle(
                                          
                                            color: Color.fromARGB(255, 225, 210, 243))),
                  ),
                  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Current Location",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  DropdownButton(
                    dropdownColor: Color(0xFF0E0F26),
                    // Initial Value
                    value: dropdownvalue,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (newValue) {
                      setState(() {
                        dropdownvalue = newValue.toString();
                      });
                    },
                  ),
                ],
              ),
            
                ]),)
              ],
            ),
          ),
        ))
        ],
      ),
    );
  }
}