import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewCollaborators extends StatefulWidget {
  @override
  _ViewCollaboratorsState createState() => _ViewCollaboratorsState();
}

class _ViewCollaboratorsState extends State<ViewCollaborators> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
          margin: EdgeInsets.only(top: 24),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                margin: EdgeInsets.all(5), child: Icon(Icons.sports_soccer)),
            Text(
              "Collaborators",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ])),
      Text(
          "Here we will show available information about us and supporters..."),
      Spacer(flex: 5)
    ]);
  }
}
