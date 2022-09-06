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

var dropdownvalue = "Earth";
var items = {"Earth","Mars","Titan","Europa","Alpha B","Venus"};
