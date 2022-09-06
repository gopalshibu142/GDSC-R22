import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:page_transition/page_transition.dart';

void nav({required url, context}) {
  Navigator.push(
    context,
    PageTransition(
        type: PageTransitionType.bottomToTopJoined,
        alignment: Alignment.bottomCenter,
        child: url,
        inheritTheme: true,
        ctx: context),
  );
}

var dest = "Earth";
var planets = {"Earth", "Mars","Venus" ,"Europa", "Titan","K62B" }.toList();
var dropdownvalue = "Earth";
var items = {"Earth", "Mars", "Venus", "Titan", "Europa"};
var aimgs = {"assets/earth.jpg", "assets/mars.jpg", "assets/venus.jpg", "assets/titan.jpg", "assets/europa.jpg","assets/Kepler62B.jpg"};
var images = aimgs.toList();
var selected = 50;
var img = "asset/earth";
