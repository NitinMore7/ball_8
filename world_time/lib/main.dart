import 'package:flutter/material.dart';
import 'package:worldtime/pages/choose_location.dart';
import 'package:worldtime/pages/home.dart';
import 'package:worldtime/pages/loading.dart';


void main() => runApp(MaterialApp(
  home: loading(),
  routes: {
    '/home':(context)=>home(),
    '/location':(context)=>chooselocation(),

  },
));