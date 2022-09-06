import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';

class contact extends StatefulWidget {
  contact({Key? key}) : super(key: key);

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  var url = "https://www.instagram.com/stellartravelbureau/";
  var mail = "mailto:travelbureaustellar@gmail.com";
  var conno = "8844558844";

  late VideoPlayerController _controller1;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.black,
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("assets/bgcontacts.jpg"))),
      ),
      Container(
        height: double.infinity,
        child: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
                  Text(
                    "Instagram : ",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(onPressed: () async{
                    if (await canLaunch(url)) {
  await launchUrl(
    Uri.parse(url),
    mode: LaunchMode.externalApplication,
  );
} else {
  throw 'There was a problem to open the url: $url';
}
                  }, child: Text(url)),
  Text(
                    "mail : ",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(onPressed: () async{
                    if (await canLaunch(url)) {
  await launchUrl(
    Uri.parse(mail),
    mode: LaunchMode.externalApplication,
  );
} else {
  throw 'There was a problem to open the url: $url';
}
                  }, child: Text('travelbureaustellar@gmail.com'))
                
            ],
          ),
        ),
      )
    ]));
  }

  @override
  void dispose() {
    super.dispose();
    _controller1.dispose();
  }
}
