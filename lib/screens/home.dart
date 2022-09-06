import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:video_player/video_player.dart';

import 'booking.dart';
import 'package:gdscr22/globals.dart';
import 'package:typewritertext/typewritertext.dart';
import 'tickets.dart';
import 'contacts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/background.mp4")
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox.expand(
          child: FittedBox(
            // If your background video doesn't look right, try changing the BoxFit property.
            // BoxFit.fill created the look I was going for.
            fit: BoxFit.fill,
            child: SizedBox(
              width: _controller.value.size.width,
              height: _controller.value.size.height,
              child: VideoPlayer(_controller),
            ),
          ),
        ),
        Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("STELLAR",
                    style: TextStyle(
                        color: Color.fromARGB(255, 138, 48, 229),
                        fontSize: 40)),
                TypeWriterText(
                    text: Text(
                      " TRAVEL BUREAU",
                      style: TextStyle(
                          color: Color.fromARGB(255, 85, 36, 134),
                          fontSize: 35),
                    ),
                    duration: Duration(milliseconds: 200)),
                OutlinedButton(

                  style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 1.0, color: Colors.blue),),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.leftToRight,
                            alignment: Alignment.bottomCenter,
                            child: Booking(),
                            inheritTheme: true,
                            ctx: context),
                      );
                    },
                    child: Text("Book Your Tickets")),
                SizedBox(
                  height: 30,
                ),
                Container(
                    width: 260,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      TextButton(
                          onPressed: () {
                             Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.size,
                            alignment: Alignment.bottomCenter,
                            child: Tickets(),
                            inheritTheme: true,
                            ctx: context),
                      );
                          }, child: Text("Your Tickets")),
                      TextButton(onPressed: () {
                        Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.size,
                            alignment: Alignment.bottomCenter,
                            child: contact(),
                            inheritTheme: true,
                            ctx: context),
                      );
                      }, child: Text("Contact Us"))
                    ])),
              ],
            ),
          ),
        )
      ],
    ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
