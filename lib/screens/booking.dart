import 'package:flutter/material.dart';
import 'package:gdscr22/globals.dart';
import 'package:swipe/swipe.dart';
import 'package:date_time_picker/date_time_picker.dart';

class Booking extends StatefulWidget {
  Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  ImageProvider imagebg = AssetImage("assets/earth.jpg");

  var i = 0;
  var len = images.length;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  image:
                      DecorationImage(fit: BoxFit.fitHeight, image: imagebg))),
          Swipe(
              onSwipeRight: () {
                if (i == 0) {
                  i = len - 1;
                } else
                  i--;
                setState(() {
                  dest = planets[i];
                  imagebg = AssetImage(images[i]);
                });
              },
              onSwipeLeft: () {
                if (i == len - 1) {
                  i = 0;
                } else
                  i++;
                setState(() {
                  dest = planets[i];
                  imagebg = AssetImage(images[i]);
                });
              },
              child: Container(
                height: double.infinity,
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Book Your Ticket",
                            style: TextStyle(color: Colors.white, fontSize: 35),
                          ),
                          Container(
                            width: 280,
                            child: Column(children: [
                              TextFormField(
                                style: TextStyle(color: Colors.white70),
                                decoration: const InputDecoration(
                                    hintText: "Enter your Fullname",
                                    hintStyle: TextStyle(color: Colors.white54),
                                    labelText: "Name",
                                    labelStyle: TextStyle(
                                        color: Color.fromARGB(
                                            255, 225, 210, 243))),
                              ),
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(color: Colors.white70),
                                decoration: const InputDecoration(
                                    hintText: "Enter your mail id",
                                    hintStyle: TextStyle(color: Colors.white54),
                                    labelText: "email",
                                    labelStyle: TextStyle(
                                        color: Color.fromARGB(
                                            255, 225, 210, 243))),
                              ),
                              TextFormField(
                                style: TextStyle(color: Colors.white70),
                                keyboardType: TextInputType.phone,
                                decoration: const InputDecoration(
                                    hintText: "Enter your phone no",
                                    hintStyle: TextStyle(color: Colors.white54),
                                    labelText: "Contact no",
                                    labelStyle: TextStyle(
                                        color: Color.fromARGB(
                                            255, 225, 210, 243))),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Current Location",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                  ),
                                  DropdownButton(
                                    dropdownColor: Color(0xFF0E0F26),
                                    value: dropdownvalue,
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(
                                          items,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        dropdownvalue = newValue.toString();
                                      });
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Destination:      ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  AnimatedSwitcher(
                                    duration: Duration(milliseconds: 200),
                                    transitionBuilder: (Widget child,
                                        Animation<double> animation) {
                                      return SlideTransition(
                                        child: child,
                                        position: Tween<Offset>(
                                                begin: Offset(0.0, -0.5),
                                                end: Offset(0.0, 0.0))
                                            .animate(animation),
                                      );
                                    },
                                    child: Text(
                                      dest,
                                      key: ValueKey<String>(dest),
                                      style: TextStyle(
                                          fontSize: 45, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "< Swipe to change destination >",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              DateTimePicker(
                                style: TextStyle(color: Colors.white70),
                                decoration: InputDecoration(
                                    label: Text(
                                  "Date",
                                  style: TextStyle(color: Colors.white),
                                )),
                                initialValue: '',
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2100),
                                onChanged: (val) => print(val),
                                validator: (val) {
                                  print(val);
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("cancel"))
                                ],
                              )
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
