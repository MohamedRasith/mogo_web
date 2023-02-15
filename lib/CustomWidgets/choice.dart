import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Choice {
  Choice({required this.title, required this.icon});

  late String title;

  late IconData icon;
}

List<Choice> choices = [
  Choice(title: 'Videos', icon: Icons.play_circle_filled_sharp),
  Choice(title: 'Bicycle', icon: Icons.shopping_cart),
  Choice(title: 'Boat', icon: Icons.handshake),
  Choice(title: 'Bus', icon: Icons.computer),
  Choice(title: 'Train', icon: Icons.arrow_forward_ios_rounded),
];