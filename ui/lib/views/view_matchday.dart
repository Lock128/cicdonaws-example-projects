import 'dart:convert';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matchcenterui/widgets/match.dart';

import '../models/PaginatedMatches.dart';
import '../models/Match.dart';

class ViewMatchday extends StatefulWidget {
  @override
  _ViewMatchdayState createState() => _ViewMatchdayState();
}

class _ViewMatchdayState extends State<ViewMatchday> {
  bool finishedLoading = false;
  List<Widget> _matchesWidgetList = [Text("Loading...")];
  @override
  Widget build(BuildContext context) {
    if (!finishedLoading) {
      var futures = <Future>[];
      futures.add(_getMatchesByDate("07-18"));
      futures.add(_getMatchesByDate("08-18"));
      futures.add(_getMatchesByDate("09-18"));
      futures.add(_getMatchesByDate("08-19"));
      Future.wait(futures).then((value) {
        List<MatchWidget> matchesWidgetList = [];
        value.forEach((element) {
          matchesWidgetList.addAll(element);
        });
        finishedLoading = true;
        this.setState(() {
          _matchesWidgetList = matchesWidgetList;
        });
      });
    }

    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
          margin: EdgeInsets.only(top: 24),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(margin: EdgeInsets.all(5), child: Icon(Icons.event)),
            Text(
              "Matchdays",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ])),
      Text("Here we will show available match days..."),
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: _matchesWidgetList)
    ]);
  }

  @override
  void initState() {
    super.initState();
  }

  Future<List<MatchWidget>> _getMatchesByDate(String date) async {
    List<MatchWidget> matchesWidgetList = [];
    try {
      String graphQLDocument = '''query ListMatches {
        getMatchesByDate(date: "${date}") {
            nextToken
            matches {
              AwayTeamId
              AwayTeamName
              Date
              HomeTeamId
              HomeTeamName
              Matchday
              PK
              SK
              Season
            }
          }
        }''';

      var operation = Amplify.API
          .query(request: GraphQLRequest<String>(document: graphQLDocument));

      var response = await operation.response;
      var data = response.data;
      if (data != null) {
        Map<String, dynamic> userMap = jsonDecode(data);
        List<dynamic> matches = userMap["getMatchesByDate"]["matches"];
        matches.forEach((element) {
          if (element != null) {
            if (element["id"] == null) {
              element["id"] = "rnd-id";
            }
            var match = Match.fromJson(element);
            matchesWidgetList.add(MatchWidget(match));
          }
        });
      }
    } on ApiException catch (e) {
      print('Query failed: $e');
    }

    return matchesWidgetList;
  }

  Future<List<Match?>> _scanDates() async {
    try {
      String graphQLDocument = '''query ScanAllDates {
        getAvailableDates() {            
            matches {
              AwayTeamId
              AwayTeamName
              Date
              HomeTeamId
              HomeTeamName
              Matchday
              PK
              SK
              Season
            }
          }
        }''';

      var operation = Amplify.API
          .query(request: GraphQLRequest<String>(document: graphQLDocument));

      var response = await operation.response;
      var data = response.data;
      if (data != null) {
        Map<String, dynamic> userMap = jsonDecode(data);
        var paginatedMatches = PaginatedMatches.fromJson(userMap);
      }
    } on ApiException catch (e) {
      print('Query failed: $e');
    }

    return <Match?>[];
  }
}
