import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matchcenterui/models/Team.dart';
import '../models/Match.dart';

class TeamWidget extends StatelessWidget {
  Team team;
  TeamWidget(this.team, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        child: Container(
            margin: EdgeInsets.all(5),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                team.id.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                team.TeamName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("-"),
              Text(
                team.PrimaryColor,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ])));
  }
}
