import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/Match.dart';

class MatchWidget extends StatelessWidget {
  Match match;
  MatchWidget(this.match, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        child: Container(
            margin: EdgeInsets.all(5),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                match.id.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                match.HomeTeamName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("-"),
              Text(
                match.AwayTeamName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ])));
  }
}
