import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class contact extends StatefulWidget {
  contact({Key? key}) : super(key: key);

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
    late VideoPlayerController _controller1;
 @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           Container(
              decoration: BoxDecoration(
                
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image:  AssetImage("assets/bgcontacts.jpg"))
              ),
            ),
          
        
        Center(
          child:Column(
            children: [
              Text("Instagram : ",style: TextStyle(color: Colors.white),)
            ],
          ),)
        ]));
  }
   @override
  void dispose() {
    super.dispose();
    _controller1.dispose();
  }
}